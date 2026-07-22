<h1 align="center">Computational Anthropology & Population Genetics | Modeling the Bronze-Age Origins of East Cushitic Populations with R</h1>

This repository showcases an **end-to-end computational anthropology and population genetics project** developed over nearly **one year** using **R**, **Eurogenes Global25**, **Microsoft Excel**, and **Inkscape**. I developed it to investigate competing hypotheses surrounding the Bronze-Age origins and dispersal of East Cushitic-speaking populations through statistical modeling, customized ancestry modeling, and interactive visualization.

Although the project uses Northeast African population history as its case study, the analytical techniques I apply—including principal component analysis (PCA), statistical modeling, simulation, multivariate analysis, data transformation, visualization, and reproducible research—are broadly transferable across data science, analytics, and other data-intensive scientific disciplines.

Using **R**, customized computational workflows, and published population-genetics datasets, I integrated principal component analysis (PCA), modified Monte Carlo ancestry modeling, and interactive visualization to evaluate competing demographic scenarios and communicate the findings through publication-quality visualizations.

To complement the computational analyses, I also authored [a **9,000-word research article** published on **Anthromadness**](https://anthromadness.blogspot.com/2025/11/east-cushites-were-in-sudan-and-egypt.html), integrating the analytical results with archaeological, linguistic, historical, and anthropological evidence to present a comprehensive interdisciplinary interpretation of Northeast African population history.

# 🎯 Project Goals

The project was designed to investigate competing hypotheses regarding the demographic history of Northeast Africa through an interdisciplinary computational framework.

Its primary goals were to:

- Analyze population structure using Eurogenes Global25 principal-component coordinates.
- Compare genetic relationships among ancient and modern Northeast African populations.
- Develop customized ancestry models using modified Monte Carlo methods.
- Evaluate competing demographic scenarios through computational simulation.
- Produce publication-quality visualizations to communicate complex population relationships.
- Compare Egyptian, Arabian, Sudanese, and Horn African population affinities.
- Integrate quantitative analyses with archaeological, linguistic, historical, and anthropological evidence.
- Communicate complex analytical findings through reproducible computational research and long-form scientific writing.

# 🏗️ Analytical Components

### Workflow

```text
Published Ancient DNA Studies
                +
Eurogenes Global25 Coordinates
                ↓
Population Selection
                ↓
Data Preparation
                ↓
Principal Component Analysis
                ↓
Interactive Visualization
                ↓
Modified Monte Carlo Ancestry Modeling
                ↓
Scaled Pastoral Neolithic Modeling
                ↓
Population Affinity Analyses
                ↓
Statistical Interpretation
                ↓
Interdisciplinary Evidence Synthesis
                ↓
Scientific Writing & Publication
```

### Dataset

- **Primary Dataset:** Eurogenes Global25 Coordinates
- **Supporting Data:** Published ancient DNA studies and population reference datasets
- **Study Regions:** Northeast Africa, the Nile Valley, the Horn of Africa, the Arabian Peninsula, and the Levant
- **Research Focus:** Population structure, ancestry modeling, and demographic history

### Data Preparation

Prepared and standardized published population-genetics datasets by:

- Selecting appropriate ancient and modern reference populations.
- Organizing source and target populations for ancestry modeling.
- Cleaning and restructuring coordinate datasets.
- Creating reproducible analytical inputs for downstream analyses.
- Standardizing datasets across multiple computational workflows.

### Principal Component Analysis (PCA)

Used **Principal Component Analysis (PCA)** to investigate:

- Population clustering.
- Relative genetic affinities.
- Ancient and modern population structure.
- Bronze-Age migration patterns.
- Relationships among Egyptian, Arabian, Sudanese, and Horn African populations.
- Pastoral Neolithic ancestry.
- East Cushitic and Ethiopian Semitic population structure.

Because the analyses use published **Global25 coordinate space** rather than raw genotype data, ancient and modern populations can be compared within a consistent analytical framework.

### Modified Monte Carlo Ancestry Modeling

One of the largest computational components of the project involved modifying the widely used **nMonte** ancestry-modeling algorithm.

The customized implementation introduces features including:

- Multi-target ancestry modeling.
- Batch processing.
- Distance-score reporting.
- Automated ancestry summaries.
- Reproducible CSV exports.

Rather than replacing existing population-genetics software, the modifications improve automation, reproducibility, and downstream visualization while facilitating the evaluation of alternative demographic scenarios.

### Scaled Pastoral Neolithic Modeling

Developed a custom analytical workflow that:

- Estimates Ethio-HG ancestry.
- Removes that ancestry computationally.
- Proportionally rescales the remaining ancestry.
- Produces adjusted ancestry models for downstream comparison.

This workflow allows alternative demographic scenarios to be evaluated across Egyptian, Arabian, and Horn African populations.

### Population Affinity Analyses

Examined relationships among:

- Ancient Egyptians
- Nubians
- Pastoral Neolithic populations
- Natufians
- Arabian populations
- Modern Horn Africans
- Sudanese populations
- Ancient Levantines

These comparisons combine:

- Principal Component Analysis (PCA)
- Coordinate distance calculations
- Modified Monte Carlo ancestry modeling
- Population affinity modeling
- Comparative ancestry matrices

Using multiple complementary analytical approaches helps evaluate consistency across independent methods rather than relying on a single model.

### Statistical Modeling

Applied multiple quantitative techniques including:

- Euclidean distance calculations.
- Coordinate averaging.
- Linear scaling.
- Proportional ancestry estimation.
- Monte Carlo simulation.
- Comparative statistical visualization.

Together, these approaches provide complementary perspectives on the same demographic questions.

### Interactive Visualization

Developed interactive visualizations using **Plotly** and exported them as standalone HTML files, including:

- Interactive ancestry charts.
- Comparative population visualizations.
- Heatmap-style ancestry matrices.

These interactive figures allow readers to explore population relationships dynamically.

### Publication Graphics

Refined computational outputs using **Inkscape** to improve readability, standardize formatting, and produce publication-quality figures suitable for scientific communication.

# ⭐ Featured Research Article

This repository accompanies the following long-form research article published on **Anthromadness**:

### [**East Cushites were in Sudan and Egypt as recently as 1500 BCE?**](https://anthromadness.blogspot.com/2025/11/east-cushites-were-in-sudan-and-egypt.html)

The article expands upon the computational analyses presented throughout this repository by integrating evidence from archaeology, comparative linguistics, craniometrics, cultural anthropology, ancient history, and published ancient DNA studies to evaluate competing models of Northeast African population history.

Topics explored include:

- Population structure of modern Horn Africans
- Pastoral Neolithic ancestry
- Bronze-Age Nile Valley populations
- East Cushitic dispersals
- Ethiopian Semitic origins
- Egyptian and Arabian population relationships
- Ancient Nubia
- Archaeology
- Historical linguistics
- Ancient DNA
- Cultural continuity
- Y-chromosome evidence

Rather than presenting statistical outputs in isolation, the article demonstrates how computational analyses can be integrated with independent lines of scientific and historical evidence to construct and evaluate complex demographic hypotheses.

# 📊 Analytical Insights

### Bronze-Age Nile Valley Connections

Multiple independent analyses suggest that demographic processes within the Bronze-Age Nile Valley may have contributed more substantially to the ancestry of later Horn African populations than demographic models relying exclusively on Pastoral Neolithic ancestry.

### Multiple Migration Waves

Across several complementary analytical approaches, the results are generally more consistent with multiple north-to-south population movements than with a single migration event into the Horn of Africa.

### East Cushitic Population History

East Cushitic-speaking populations consistently exhibit ancestry patterns compatible with multiple ancestral sources rather than a single founding population, supporting a more complex demographic history.

### Population Continuity

Several analyses indicate varying degrees of genetic continuity between ancient Northeast African populations and present-day Horn Africans while also identifying evidence of subsequent admixture events.

### Interdisciplinary Convergence

A central objective of the project was to evaluate whether independent scientific disciplines converge on similar historical interpretations.

Rather than relying solely on population-genetics analyses, the computational findings were interpreted alongside evidence from:

- Archaeology
- Comparative linguistics
- Craniometrics
- Cultural anthropology
- Historical documentation

Together, these complementary lines of evidence provide a broader analytical framework for interpreting Northeast African population history.

# ⚠️ Project Limitations

As an **independent computational research project**, several important methodological limitations should be considered when interpreting the analyses.

- Global25 coordinates are reduced-dimensional representations rather than raw genotype data.
- Principal Component Analysis (PCA) visualizes population structure but cannot independently establish admixture events or migration direction.
- Monte Carlo ancestry modeling provides best-fit statistical models rather than definitive historical reconstructions.
- Ancestry models are influenced by the selected reference populations and the currently available ancient DNA record.
- Ancient DNA sampling across Northeast Africa remains incomplete, and future discoveries may refine existing interpretations.
- Archaeological, linguistic, historical, and genetic evidence each possess independent limitations and should be interpreted collectively rather than in isolation.

Accordingly, the analyses are intended to contribute to ongoing discussions of Northeast African population history rather than provide definitive historical conclusions.

# 🛠️ Technical Skills Demonstrated

#### Programming

- R
- Script-based analytical workflows
- Reproducible research
- Package management

#### Statistical & Computational Analysis

- Principal Component Analysis (PCA)
- Monte Carlo simulation
- Population affinity modeling
- Multivariate analysis
- Euclidean distance calculations
- Coordinate transformations
- Proportional ancestry estimation
- Distance-based modeling
- Population clustering

#### Data Processing

- Data cleaning
- Data wrangling
- Data transformation
- Data reshaping
- CSV processing
- Population filtering
- Statistical summaries

#### Data Visualization

- Principal Component Analysis (PCA) visualizations
- Interactive Plotly visualizations
- Comparative ancestry matrices
- Heatmap-style visualizations
- Scatter plots
- Publication-quality graphics

#### Scientific Research

- Literature review
- Comparative analysis
- Interdisciplinary evidence synthesis
- Historical interpretation
- Population genetics
- Computational anthropology

#### Software

- RStudio
- Microsoft Excel
- Inkscape

#### Libraries

```r
library(readr)
library(dplyr)
library(tidyr)
library(data.table)

library(ggplot2)
library(ggrepel)
library(plotly)
library(htmlwidgets)

library(reshape2)
library(ggdendro)
library(ape)
library(DT)
```

# 💡 What This Project Demonstrates

This project demonstrates the ability to independently design, execute, and communicate a large-scale computational research project integrating quantitative analysis with interdisciplinary scientific evidence.

Specifically, it demonstrates the ability to:

- Design reproducible analytical workflows.
- Develop customized computational methodologies.
- Analyze high-dimensional population-genetics data.
- Apply multivariate statistical techniques to complex research questions.
- Integrate statistical modeling with interdisciplinary scientific evidence.
- Produce publication-quality data visualizations.
- Communicate complex analytical findings to both technical and non-technical audiences.

Beyond the computational analyses themselves, the project demonstrates the ability to synthesize evidence from multiple scientific disciplines to solve complex analytical problems. Although the case study focuses on computational anthropology and population genetics, the analytical thinking, quantitative methods, workflow design, and communication skills demonstrated throughout are broadly transferable across data science, analytics, and other data-driven fields.

# 📁 Repository Structure

```text
Datasets/
    Global25 coordinate files
    Population reference datasets
    Source and target datasets
    Pastoral Neolithic datasets

Miscellaneous/
    Maps
    Figures
    Supporting assets

Outputs/
    PCA visualizations
    Interactive Plotly figures
    Comparative ancestry matrices
    Monte Carlo outputs
    CSV summaries
    Publication-ready graphics

R Scripts/
    18 analytical scripts
    Modified nMonte implementation
    Data preparation
    Statistical analyses
    Visualization workflows

README.md
```

# 🚀 Replicating the Project

#### Clone the Repository

```bash
git clone https://github.com/Awale-Abdi/Anthromadness_EC_Nubia_post.git

cd Anthromadness_EC_Nubia_post
```

#### Install Required Packages

```r
install.packages(c(
  "readr",
  "dplyr",
  "tidyr",
  "data.table",
  "ggplot2",
  "ggrepel",
  "plotly",
  "reshape2",
  "ggdendro",
  "ape",
  "DT",
  "htmlwidgets"
))
```

#### Repository Layout

Maintain the existing directory structure:

```text
Datasets/
R Scripts/
Outputs/
Miscellaneous/
```

#### Running the Analyses

Open the project in **RStudio** (or another R environment) and execute the desired scripts located in:

```text
R Scripts/
```

The repository includes analytical workflows for generating:

- Principal Component Analysis (PCA) visualizations
- Population affinity analyses
- Interactive Plotly visualizations
- Comparative ancestry matrices
- Modified Monte Carlo ancestry models
- Scaled Pastoral Neolithic analyses
- Publication-quality figures

#### Modified nMonte Workflow

To reproduce the customized ancestry models:

1. Select the desired source and target datasets.
2. Rename them:

```text
source.txt
target.txt
```

3. Place both files in the same directory as:

```text
Modified_nMonte.R
```

4. Execute the accompanying driver script located within:

```text
R Scripts/
```

The modified implementation exports ancestry summaries, ancestry proportions, and distance metrics for downstream analysis, visualization, and model comparison.

# 📚 References

This repository accompanies a [**9,000-word Anthromadness research article**](https://anthromadness.blogspot.com/2025/11/east-cushites-were-in-sudan-and-egypt.html) synthesizing more than **100 scholarly sources** spanning:

- Ancient DNA
- Population genetics
- Archaeology
- Historical linguistics
- Anthropology
- Egyptology
- Nubian studies
- African history

For the complete bibliography and discussion of the historical evidence, please refer to the accompanying research article.

# 📬 Contact Me

**Email**

Awaleiabdi@outlook.com

**LinkedIn**

https://www.linkedin.com/in/awale-abdi/

---

<div align="center">

*Exploring humanity's past through computational analysis, statistical modeling, and interdisciplinary research.*

</div>
