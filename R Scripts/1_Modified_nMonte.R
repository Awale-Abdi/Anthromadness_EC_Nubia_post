#*******************************************************
# This is my mild modification to nMonte that allows it to:
# - Process multiple target samples from a single target file
# - Output a CSV with distance% and population mixture percentages
#
# Run it with:
# source('1_Modified_nMonte.R')
# results <- getModifiedMonte("source.txt", "target.txt", outputCSV = "nMonte_results.csv")
#*******************************************************

# Default global constants
batch_0  = 1000    # default rows of sample randomly drawn from source file
cycles_0 = 1000    # default number of cycles

#=========================== START OF GETModifiedMONTE FUNCTION ===========================
getModifiedMonte <- function(sourcefile, targetfile, omit='', Nbatch=batch_0, Ncycles=cycles_0, outputCSV=NULL) {
  
  #------------------------- do_algorithm ---------------------------------------
  do_algorithm <- function(selection, targ) {
    mySel <- as.matrix(selection, rownames.force = NA)       
    myTg <- as.matrix(targ, rownames.force = NA)
    dif2targ <- sweep(mySel, 2, myTg, '-')  # source - target       
    Nsource <- nrow(dif2targ)
    kcol  <- ncol(dif2targ)
    rowLabels <- rownames(dif2targ)
    
    # Preallocate
    matPop   <- sample(1:Nsource, Nbatch, replace=TRUE)
    matAdmix <- dif2targ[matPop,]
    colM1 <- colMeans(matAdmix)
    eval1 <- sum(colM1^2)
    
    # Monte Carlo cycles
    for (c in 1:Ncycles) {
      dumPop   <- sample(1:Nsource, Nbatch, replace=TRUE)
      dumAdmix <- dif2targ[dumPop,]
      for (b in 1:Nbatch) {
        store <- matAdmix[b,]
        matAdmix[b,] <- dumAdmix[b,]
        colM2 <- colMeans(matAdmix)
        eval2 <- sum(colM2^2)
        if (eval2 <= eval1) {
          matPop[b] <- dumPop[b]
          colM1 <- colM2
          eval1 <- eval2
        } else {
          matAdmix[b,] <- store
        }
      }
    }
    
    fitted <- t(colMeans(matAdmix) + myTg[1,])
    populations <- factor(rowLabels[matPop], levels=rowLabels)
    
    list('estimated' = fitted, 'pops' = populations)
  }
  
  # Read source
  tempsource <- read.csv(sourcefile, head=TRUE, row.names=1, stringsAsFactors=TRUE, na.strings=c('',' ','NA'))
  mysource   <- tempsource[rownames(tempsource) != omit,]
  
  # Read targets (multiple samples)
  allTargets <- read.csv(targetfile, head=TRUE, row.names=1)
  
  # Checks
  check_formats(mysource, allTargets)
  check_omit(mysource, omit)
  
  PCT <- ifelse(max(mysource[1, ] > 2), 100, 1)
  
  results_all <- list()
  
  #========================== MAIN LOOP: each row in target =====================
  for (i in 1:nrow(allTargets)) {
    myTarget <- allTargets[i, , drop=FALSE] 
    targetID <- rownames(allTargets)[i]
    cat("\nProcessing target:", targetID, "\n")
    
    cat("1. CLOSEST SINGLE ITEM DISTANCE%\n")
    print(nearestItems(mysource, myTarget) * 100 / PCT)
    cat("\n")
    
    cat("2. FULL TABLE nMONTE\n")
    result <- do_algorithm(mysource, myTarget)
    fitted <- result$estimated
    populations <- result$pops
    
    dif <- fitted - myTarget
    dist1_2 <- sqrt(sum(dif^2)) / PCT
    cat(paste("distance%=", round(100 * dist1_2, 4), sep=""), "\n\n")
    
    tb <- table(populations)
    tb <- tb[order(tb, decreasing=TRUE)]
    tb_matrix <- as.matrix(100 * tb / Nbatch)
    
    results_all[[targetID]] <- list(
      target          = myTarget,
      fitted          = fitted,
      distance_percent= round(100 * dist1_2, 4),
      pop_percent     = tb_matrix
    )
  }
  
  #========================== CREATE SUMMARY CSV ================================
  if (!is.null(outputCSV)) {
    all_pops <- sort(unique(unlist(lapply(results_all, function(x) rownames(x$pop_percent)))))
    df_final <- data.frame(matrix(nrow=length(results_all), ncol=length(all_pops) + 1))
    colnames(df_final) <- c("distance%", all_pops)
    rownames(df_final) <- names(results_all)
    
    for (tg in names(results_all)) {
      df_final[tg, "distance%"] <- results_all[[tg]]$distance_percent
      tb_mat <- results_all[[tg]]$pop_percent
      for (pop in rownames(tb_mat)) {
        df_final[tg, pop] <- tb_mat[pop, 1]
      }
    }
    
    df_final[is.na(df_final)] <- 0
    write.csv(df_final, file=outputCSV, row.names=TRUE)
    cat("Aggregated final ancestry results saved to", outputCSV, "\n")
  }
  
  return(results_all)
}
