<div align="center">

# **Anthromadness – East Cushites in Nubia Post**

</div>

## **Overview**

This repository accompanies my long-form analysis on the **origins, dispersals, and deep-time history of East Cushitic and broader Horn African populations**. It integrates **population genetics, comparative linguistics, archaeology, craniometrics, and cultural anthropology** to explore a revised model of how Cushitic-speaking peoples emerged in the Horn of Africa.

A central question examined here is whether East Cushitic-speaking groups:

- Originated exclusively inside the Horn after 3500–3000 BCE
  
  **OR**
  
- Whether they reflect **multiple population waves** into the Horn

The working model suggests that:

- **East Cushitic ancestors were likely present in Wawat and Kerma regions** during the Bronze Age  
- **Southward movements** into the Horn of Africa like occurred in waves with East Cushites as a later wave  
- These East Cushites contributed substantially to modern Horn African Cushites & Ethiosemites

This repository uses **Principal Component Analysis (PCA)**, **stacked ancestry charts**, **interactive heatmaps**, and **mMonte-based admixture modeling** (including a custom modified algorithm) to test whether:

- Kenyan Pastoral Neolithic individuals represent only one **early** wave  
- Modern Horn Cushites require **additional** waves from Sudan/Egypt (supported by Y-DNA E-Z813 timing)  
- “Naqada-like” morphological and cultural parallels reflect a **real Nile Valley connection**  
- Iron-Age Yemeni (PES) ancestry best explains the **later West Asian component** in Horn Africans  

All analyses are performed using **Eurogenes Global25 PCA coordinates**.

---

## **What This Repository Demonstrates**

- Structure of **Modern Horn populations**
- Variation within the **Pastoral Neolithic** and why it alone cannot explain Cushitic ancestry  
- **Egyptian, Sudanese, and Arabian** affinities tested using Natufian, Iberomaurusian, Dinka, and Yemeni proxies  
- **Customized mMonte admixture modeling utilizing R** for multi-wave ancestry reconstruction  
- PCA-based tests for **Egypt vs Arabia vs Sudan** contributions  
- Visualization of Arabia/Egypt/Levant homogeny over the last ~3,000 years  
- **Cushitic–Ethiosemitic clines** observed through PCA and ancestry charts  

These analyses form the empirical foundation of the corresponding blog post.

---

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

---

### 📁 **Outputs/**
Generated visualizations and results:

- PCA plots (prehistoric, pastoral, modern, MENA-focused)  
- Interactive heatmaps (Egyptian–Yemeni, Bedouin–Egyptian, Yemeni–Ethio-HG)  
- PN ancestry charts & scaled proportions  
- Custom mMonte admixture results (distance% + mixture tables)  
- Arabio–Egyptian basal proportion results  

Each script writes its output directly here.

---

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

---

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

---

## **Computational Methods**

- **PCA** performed on **25-dimensional Eurogenes Global25 matrices** using `prcomp()`
- Dimensionality reduced to **7 principal components** to approximate **Vahaduo-style scaling**
- **Interactive visualizations** created using **plotly** and **htmlwidgets**
- **Monte Carlo ancestry modeling** performed using a **custom modified nMonte algorithm** capable of:
  - handling multiple target samples
  - exporting full distance% + mixture% summaries
  - generating reproducible CSV outputs


---

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

---

Contact

📌 Email: Awaleiabdi@outlook.com

📌 LinkedIn: https://www.linkedin.com/in/awale-abdi/
