<div align="center">

# **Anthromadness – East Cushites in Nubia Post**

</div>

## **Overview**

This repository accompanies my long-form analysis on the **origins, dispersals, and history of East Cushitic and broader Horn African populations**. It integrates **population genetics, comparative linguistics, archaeology, craniometrics, cultural anthropology, and historical research utilizing over 100 citations** to explore a revised model of how Cushitic and Ethiopian-Semitic speaking peoples emerged in the Horn of Africa.

A central question examined here is whether East Cushitic-speaking groups:

- Originated exclusively inside the Horn after 3500–3000 BCE
  
  **OR**
  
- Whether they reflect **multiple population waves from the North** into the Horn

The working model based on the analyses conducted suggests that:

- **East Cushitic ancestors were likely present in Wawat and Kerma regions** during the Bronze Age  
- **Southward movements** into the Horn of Africa likely occurred in waves with East Cushites as a later wave  
- These East Cushites contributed substantially to modern Horn African Cushites & Ethiosemites

## **What This Repository Demonstrates In Terms Of Data**

- Structure of **Modern Horn populations**
- Structure of the **Pastoral Neolithic** samples
- **Egyptian, Sudanese, and Arabian** affinities tested using Natufian, Iberomaurusian, Dinka, and Yemeni proxies  
- **Customized mMonte admixture modeling utilizing R** for multi-wave ancestry reconstruction  
- PCA-based tests for **Egypt vs Arabia vs Sudan** contributions  
- Visualization of Arabia/Egypt/Levant similarity over the last ~3,000 years  
- **Cushitic–Ethiosemitic clines** observed through PCA and ancestry charts  

These analyses form the population genetic foundations of the corresponding blog post, with all modeling conducted using Eurogenes Global25 PCA coordinates, a widely used comparative framework that has seen growing adoption in academic theses, conference abstracts, and peer-reviewed papers as a reliable high-resolution PCA space for both ancient and modern genomes.

## **Technical Implementation**

This project is built entirely in **R**, using multiple libraries such as:

```r
library(readr)
library(dplyr)
library(tidyr)
library(data.table)
library(ggplot2)
library(ggrepel)
library(plotly)
library(reshape2)
library(ggdendro)
library(ape)
library(DT)
library(htmlwidgets)
```

## **Computational Methods**

- **PCA** performed on **25-dimensional Eurogenes Global25 matrices** using `prcomp()`
- Dimensionality reduced to **7 principal components** for one analysis to approximate **Vahaduo-style scaling**
- **Interactive visualizations** created using **plotly** and **htmlwidgets**
- **Monte Carlo ancestry modeling** performed using a **custom modified nMonte algorithm** capable of:
  - handling multiple target samples
  - exporting full distance% + mixture% summaries
  - generating reproducible CSV outputs
- **Scaled Pastoral Neolithic ancestry modeling** performed using a custom Excel workflow that:
  - removes Ethio-HG/Mota-related ancestry from PN samples
  - rescales remaining components proportionally
  - outputs both individual-sample and average ancestry matrices
- Finally, several PCA figures and charts were manually refined **in Inkscape to create quality visuals**

## **How to Use**

### **1. Clone the Repository**
```sh
git clone https://github.com/Awale-Abdi/Anthromadness_EC_Nubia_post.git
cd Anthromadness_EC_Nubia_post
```

### **2. Keep All Datasets in `/Datasets/`**

All analyses rely on the datasets stored in:

**`/Datasets/`**

Every R script uses **relative paths**, so simply make sure all the dataset files are in your working directory.

### **3. Run the R Scripts**

Open **R** or **RStudio**, or whichever R environment you prefer, then run any script in:

**`/R Scripts/`**

Each script corresponds directly to one visualization or analysis such as:

- PCA plots  
- Ancestry proportion charts  
- Heatmaps  
- Basal proportion metrics  
- mMonte multi-target simulations  
- Yemeni/Egyptian table generators  

Outputs will match those contained in the `/Outputs/` folder.  If any issues or script errors arise, please feel free to contact the author, **Awale Abdi**.

## Contact

📌 Email: Awaleiabdi@outlook.com

📌 LinkedIn: https://www.linkedin.com/in/awale-abdi/
