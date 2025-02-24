#*******************************************************
# Modified R script nMonte.R
# - Processes multiple target samples from a single target file
# - Outputs a CSV with distance% and population mixture percentages
#
# Usage: getMonte(datafile, targetfile, outputCSV="results.csv")
#
# Last modified: for multiple targets & CSV summary
#*******************************************************

# Default global constants
batch_0  = 1000    # default rows of sample randomly drawn from data file
cycles_0 = 1000    # default number of cycles

#=========================== START OF GETMONTE FUNCTION ===========================
getMonte <- function(datafile, targetfile, omit='', Nbatch=batch_0, Ncycles=cycles_0, outputCSV=NULL) {
  
  #------------------------- do_algorithm ---------------------------------------
  do_algorithm <- function(selection, targ) {
    mySel <- as.matrix(selection, rownames.force = NA)       
    myTg <- as.matrix(targ, rownames.force = NA)
    dif2targ <- sweep(mySel, 2, myTg, '-')  # data - target       
    Ndata <- nrow(dif2targ)
    kcol  <- ncol(dif2targ)
    rowLabels <- rownames(dif2targ)
    
    # Preallocate
    matPop   <- matrix(NA_integer_, Nbatch, 1, byrow=TRUE)
    dumPop   <- matrix(NA_integer_, Nbatch, 1, byrow=TRUE) 
    matAdmix <- matrix(NA_real_,    Nbatch, kcol, byrow=TRUE)
    dumAdmix <- matrix(NA_real_,    Nbatch, kcol, byrow=TRUE)
    
    # Initialize with random pops
    matPop <- sample(1:Ndata, Nbatch, replace=TRUE)
    matAdmix <- dif2targ[matPop,]
    colM1 <- colMeans(matAdmix)
    eval1 <- sum(colM1^2)
    
    # Monte Carlo cycles
    for (c in 1:Ncycles) {
      dumPop   <- sample(1:Ndata, Nbatch, replace=TRUE)
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
    # Fitted target (add back the offset)
    fitted <- t(colMeans(matAdmix) + myTg[1,])
    popX <- matPop
    populations <- factor(rowLabels[popX], levels=rowLabels)
    
    list('estimated' = fitted, 'pops' = populations)
  }
  #------------------------- end do_algorithm -----------------------------------
  
  # Read data
  tempData <- read.csv(datafile, head=TRUE, row.names=1, stringsAsFactors=TRUE, na.strings=c('',' ','NA'))
  myData   <- tempData[rownames(tempData) != omit,]
  
  # Read targets (multiple samples)
  allTargets <- read.csv(targetfile, head=TRUE, row.names=1)
  
  # Checks
  check_formats(myData, allTargets)
  check_omit(myData, omit)
  
  # Decide if scaled by 100
  PCT <- ifelse(max(myData[1, ] > 2), 100, 1)
  
  # To store results
  results_all <- list()
  
  #========================== MAIN LOOP: each row in target =====================
  for (i in 1:nrow(allTargets)) {
    myTarget <- allTargets[i, , drop=FALSE] 
    targetID <- rownames(allTargets)[i]
    cat("\nProcessing target:", targetID, "\n")
    
    # Print nearest neighbor
    cat("1. CLOSEST SINGLE ITEM DISTANCE%\n")
    print(nearestItems(myData, myTarget) * 100 / PCT)
    cat("\n")
    
    # Run nMonte
    cat("2. FULL TABLE nMONTE\n")
    result <- do_algorithm(myData, myTarget)
    fitted <- result$estimated
    populations <- result$pops
    
    # Distance
    dif <- fitted - myTarget
    matrix_out <- rbind(myTarget, fitted, dif)
    rownames(matrix_out)[2:3] <- c('fitted','dif')
    print(matrix_out)
    dist1_2 <- sqrt(sum(dif^2)) / PCT
    cat(paste("distance%=", round(100 * dist1_2, 4), sep=""), "\n\n")
    
    # Print population table
    tgname <- row.names(myTarget)[1]
    write(paste("\t", tgname), stdout())
    write("", stdout())
    tb <- table(populations)
    tb <- tb[order(tb, decreasing=TRUE)]
    tb_matrix <- as.matrix(100 * tb / Nbatch)
    write.table(tb_matrix, sep=',', quote=FALSE, col.names=FALSE, dec='.')
    
    # Correlations
    cat("\nCORRELATION OF ADMIXTURE POPULATIONS\n")
    tb2 <- table(populations)
    selFinal <- names(tb2[tb2 > 0])
    adFinal <- myData[selFinal, , drop=FALSE]
    if (nrow(adFinal) == 1) {
      print("Only 1 population, no correlations.")
    } else {
      corPops <- cor(t(adFinal))
      print(round(corPops, digits=2))
    }
    cat("\n")
    
    # Store for final CSV
    results_all[[targetID]] <- list(
      target          = myTarget,
      fitted          = fitted,
      distance_percent= round(100 * dist1_2, 4),
      pop_percent     = tb_matrix
    )
  }
  #========================== END MAIN LOOP =====================================
  
  #========================== CREATE SUMMARY CSV ================================
  if (!is.null(outputCSV)) {
    # Gather all unique populations across all targets
    all_pops <- sort(unique(unlist(lapply(results_all, function(x) rownames(x$pop_percent)))))
    
    # Create a data frame with columns: distance% + each population
    df_final <- data.frame(matrix(nrow=length(results_all), ncol=length(all_pops) + 1))
    colnames(df_final) <- c("distance%", all_pops)
    rownames(df_final) <- names(results_all)
    
    # Fill in data for each target
    for (tg in names(results_all)) {
      df_final[tg, "distance%"] <- results_all[[tg]]$distance_percent
      tb_mat <- results_all[[tg]]$pop_percent  # each pop's % for this target
      # tb_mat has rownames = pop names, single column = the percentages
      for (pop in rownames(tb_mat)) {
        df_final[tg, pop] <- tb_mat[pop, 1]
      }
    }
    
    # Replace any NAs with 0
    df_final[is.na(df_final)] <- 0
    
    # Write to CSV
    write.csv(df_final, file=outputCSV, row.names=TRUE)
    cat("Aggregated final ancestry results saved to", outputCSV, "\n")
  }
  
  # Return all results in case the user wants them in R
  return(results_all)
}
#=========================== END OF GETMONTE FUNCTION ===========================

#=================================== Utilities =================================

subset_data <- function(dataFile, saveFile, ...) {
  input <- read.csv(dataFile, head=TRUE, row.names=1, stringsAsFactor=FALSE)
  selection <- list(...)
  selError <- selection[!selection %in% rownames(input)]
  if (length(selError) > 0) {
    cat(paste(selError,' is not a valid rowname\n',sep=''))
  } else {
    output <- input[rownames(input) %in% selection,]
    print(output)
    write.csv(output, nameIsFree(saveFile), quote=FALSE)
  }
}

aggr_pops <- function(fileName, myFunc=mean) {
  myData <- read.csv(fileName, head=TRUE, row.names=1, stringsAsFactors=FALSE)
  splitted <- strsplit(rownames(myData), split=':', fixed=TRUE)
  splitmat <- t(matrix(unlist(splitted), length(splitted[[1]]), length(splitted)))
  aggrData <- aggregate(myData, by=list(splitmat[,1]), myFunc)
  temp <- as.matrix(aggrData[,-1]); rownames(temp) <- aggrData[,1]
  round(temp, 7)
}

tab2comma <- function(tabFile, commaFile) {
  data <- read.csv(tabFile, head=TRUE, sep='\t', row.names=1, stringsAsFactor=FALSE)
  write.csv(data, commaFile, row.names=TRUE)
}

nearestItems <- function(inData, inTarget, maxFits=8) {
  totArr <- rbind(inTarget, inData)
  distMat <- as.matrix(dist(totArr, method='euclidean'))
  dist1 <- distMat[,1]
  sortDist <- dist1[order(dist1)]
  nFits <- min(nrow(inData), maxFits)
  sortDist[2:(nFits+1)]
}

nameIsFree <- function(newFile) {
  while (file.exists(newFile)) {
    newFile <- readline('select new filename for saving (without quotes): ')
  }
  newFile
}

check_formats <- function(sheet, target) {
  if (any(is.na(sheet))) {
    err_row <- as.integer(which(rowSums(is.na(sheet)) > 0))
    print(sheet[err_row, ])
    stop(paste('Missing value in row ', err_row))
  }
  if (!identical(colnames(sheet), colnames(target))) {
    print(colnames(sheet)); print(colnames(target))
    stop('Colnames input not identical')
  }
}

check_omit <- function(sheet, dropInfo) {
  if (dropInfo != '' & !dropInfo %in% rownames(sheet)) {
    print('!!!! WARNING: Request to omit unknown popName. !!!!')
  }
}
