<div align="center">

# **Anthromadness – East Cushites in Nubia Post**

</div>

## **Overview**

This repository accompanies my long-form analysis on the **origins, dispersals, and deep-time history of East Cushitic and broader Horn African populations**. It integrates **population genetics, comparative linguistics, archaeology, craniometrics, and cultural anthropology** to explore a revised model of how Cushitic-speaking peoples emerged in the Horn of Africa.

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

These analyses form the empirical foundation of the corresponding blog post, with all modeling conducted using Eurogenes Global25 PCA coordinates, a widely used comparative framework that has seen growing adoption in academic theses, conference abstracts, and several peer-reviewed papers as a reliable high-resolution PCA space for both ancient and modern genomes.

## **Repository Structure**

### 📁 **Datasets/**
Input files used across all analyses:

- Arabio–Egyptian basal proportion datasets  
- Pastoral Neolithic coordinates  
- Mota/Ethio-HG ancestry datasets  
- Ancient Egyptian & Sudanese proxies (Natufian, Iberomaurusian, Dinka)  
- Yemeni & Arabian (PES-related) datasets  
- Egyptian–Yemeni–Bedouin heatmap matrices  
- **mMonte source and target files** for admixture modeling  

### 📁 **Outputs/**
Generated visualizations and results:

- PCA plots (prehistoric, pastoral, modern, MENA-focused)  
- Interactive heatmaps (Egyptian–Yemeni, Bedouin–Egyptian, Yemeni–Ethio-HG)  
- PN ancestry charts & scaled proportions  
- Custom mMonte admixture results (distance% + mixture tables)  
- Arabio–Egyptian basal proportion results  

### 📁 **R Scripts/**
All analytical code for:

#### **PCA Generation**
- Prehistoric PCA  
- Pastoral Neolithic PCA  
- Modern Cushitic/Egyptian/Yemeni PCA  
- Labeled PCA variants  
- MENA PCA (7D Vahaduo-style reduction)

#### **Ancestry Proportion Models**
- PN ancestry decomposition  
- Scaled PN ancestry  
- Later admixture proportions (mMonte-based)  
- Arabio–Egyptian Basal Proportion calculator  

#### **Heatmaps & Tables**
- Yemeni–Egyptian heatmaps  
- Bedouin–Egyptian heatmaps  
- Ethio-HG & Yemeni matrices  
- Yemeni and Ma’rib ancestry tables  

#### **Custom mMonte Simulation Engine**
- `1_Modified_nMonte.R` → A generalized and improved version of nMonte  
  - Accepts **multiple target samples at once**  
  - Produces **distance%** + **population mixture %**  
  - Exports a **full summary CSV**  
- `1_Script for running nMonte.R`  
- Result aggregation scripts  

This modification is a notable computational enhancement and demonstrates the author's ability to customize Monte-Carlo-based optimization algorithms.

## **Technical Implementation**

This project is built entirely in **R**, using:

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

### **2. Keep All Datasets in /Datasets**

All R scripts load files using relative paths, so the folder structure must remain unchanged.

### **3. Run Analyses**

Open R or RStudio and execute any script inside:

R Scripts/


All outputs (plots, tables, HTML heatmaps, mMonte results) will be automatically written to:

Outputs/

## Contact

📌 Email: Awaleiabdi@outlook.com

📌 LinkedIn: https://www.linkedin.com/in/awale-abdi/
