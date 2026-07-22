<h1 align="center">Computational Anthropology & Population Genetics | Modeling the Bronze-Age Origins of East Cushitic Populations with R</h1>

This repository documents an **end-to-end computational anthropology and population genetics project** developed over nearly **one year** using **R**, **Excel**, **Inkscape**, and **Eurogenes Global25** population-genetics datasets.

Across **18 analytical scripts**, custom ancestry-modeling workflows, interactive visualizations, and more than **100 scholarly sources**, the project investigates competing hypotheses surrounding the Bronze-Age origins and dispersal of East Cushitic-speaking populations in Northeast Africa.

Rather than relying on a single analytical technique, the workflow combines principal component analysis (PCA), customized Monte Carlo ancestry modeling, multivariate analysis, simulation, interactive visualization, and interdisciplinary evidence synthesis to evaluate alternative demographic scenarios.

Although the case study focuses on Northeast Africa, the analytical techniques demonstrated throughout—including statistical modeling, data transformation, reproducible research, visualization, and technical communication—are broadly transferable across data-intensive scientific and analytical disciplines.

The repository accompanies a **9,000-word research article** published on **Anthromadness**, where the computational analyses are integrated with archaeological, linguistic, historical, and anthropological evidence to present the complete research narrative.

# 📈 Project at a Glance

| | |
|:---|:---|
| **Development Time** | ~1 year |
| **Research Article** | 9,000+ words |
| **Analytical Scripts** | 18 custom R scripts |
| **Scholarly Sources** | 100+ references |
| **Primary Language** | R |
| **Additional Software** | Excel, Inkscape |
| **Primary Dataset** | Eurogenes Global25 Coordinates |
| **Core Methods** | PCA, Monte Carlo ancestry modeling, multivariate analysis, simulation, interactive visualization |
| **Research Areas** | Population Genetics, Computational Anthropology, Archaeology, Comparative Linguistics |

# 📖 Featured Research Article

This repository accompanies the following long-form article published on **Anthromadness**:

### [East Cushites were in Sudan and Egypt as recently as 1500 BCE?](https://anthromadness.blogspot.com/2025/11/east-cushites-were-in-sudan-and-egypt.html)

The article combines computational population-genetics analyses with evidence from archaeology, comparative linguistics, craniometrics, cultural anthropology, and ancient history to evaluate competing models of Northeast African population history.

Topics include:

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

Rather than presenting statistical outputs in isolation, the article demonstrates how computational analyses can be integrated with independent lines of scientific and historical evidence.

# 🎯 Research Questions

The project investigates several interconnected questions regarding the demographic history of Northeast Africa.

Key questions include:

- Can the genetic structure of modern Horn African populations be explained solely through Pastoral Neolithic ancestry?
- Do Bronze-Age Nile Valley populations better explain the emergence of East Cushitic-speaking groups?
- What relationships exist between ancient Egyptians, Nubians, Arabian populations, and modern Horn Africans?
- Are multiple north-to-south migrations more consistent with the observed genetic structure than a single migration event?
- How do genetic, archaeological, linguistic, and anthropological evidence converge?
- Can customized computational modeling provide additional insight into unresolved questions of Northeast African population history?

# 🔬 Analytical Workflow

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
Population Comparisons
                ↓
Statistical Interpretation
                ↓
Interdisciplinary Evidence Synthesis
                ↓
Scientific Writing & Publication
```

# 🧠 Analytical Objectives

The project was designed to demonstrate how computational analysis can be applied to complex historical questions through an interdisciplinary analytical framework.

Its primary objectives were to:

- Analyze population structure using Global25 principal-component coordinates.
- Compare ancient and modern Northeast African populations.
- Develop customized ancestry models using modified Monte Carlo methods.
- Evaluate competing demographic scenarios through computational simulation.
- Produce publication-quality visualizations.
- Compare Egyptian, Arabian, Sudanese, and Horn African population affinities.
- Integrate quantitative analyses with archaeological, linguistic, historical, and anthropological evidence.
- Communicate complex analytical findings through long-form scientific writing.

# 💼 Analytical Capabilities Demonstrated

Although this project focuses on computational anthropology, the analytical capabilities demonstrated are broadly transferable across scientific and analytical disciplines.

These include:

- Multivariate statistical analysis
- Principal Component Analysis (PCA)
- Population affinity modeling
- Monte Carlo simulation
- Data transformation
- Exploratory data analysis
- Interactive visualization
- Scientific programming in R
- Reproducible analytical workflows
- Research synthesis
- Technical communication
- Publication-quality data visualization

# ⚙️ Computational Methods

The analyses combine multiple complementary computational approaches to investigate population relationships across Northeast Africa and Western Eurasia. Rather than relying on a single method, each technique addresses a different aspect of the broader research questions.

The workflow integrates principal component analysis, customized Monte Carlo ancestry modeling, proportional ancestry estimation, statistical modeling, interactive visualization, and comparative analyses within a reproducible computational framework.

#### 📊 Principal Component Analysis (PCA)

Principal Component Analysis forms the foundation of much of the repository.

Using **Eurogenes Global25 coordinates**, PCA visualizations investigate:

- Population clustering
- Relative genetic affinities
- Ancient and modern population structure
- Bronze-Age migration patterns
- Egyptian, Arabian, Sudanese, and Horn African relationships
- Pastoral Neolithic ancestry
- East Cushitic and Ethiopian Semitic population structure

Because the analyses use published Global25 coordinate space rather than raw genotype data, ancient and modern populations can be compared within a consistent analytical framework.

#### 🧬 Modified Monte Carlo Ancestry Modeling

One of the largest computational components of the project involved modifying the popular **nMonte** ancestry-modeling algorithm.

The customized implementation introduces features including:

- Multi-target ancestry modeling
- Batch processing
- Distance-score reporting
- Automated ancestry summaries
- Reproducible CSV exports

The objective was not to replace established population-genetics software, but to improve automation, reproducibility, and downstream visualization while exploring alternative demographic scenarios.

The repository includes the modified implementation for transparency and reproducibility.

#### 📈 Scaled Pastoral Neolithic Modeling

Several analyses investigate the genetic structure of Pastoral Neolithic populations through a custom workflow that:

- Estimates Ethio-HG ancestry
- Removes that ancestry computationally
- Proportionally rescales the remaining ancestry
- Produces adjusted ancestry models for downstream comparison

This allows alternative demographic scenarios to be compared across Egyptian, Arabian, and Horn African populations.

#### 🌍 Population Affinity Analyses

The repository examines relationships among:

- Ancient Egyptians
- Nubians
- Pastoral Neolithic populations
- Natufians
- Arabian populations
- Modern Horn Africans
- Sudanese populations
- Ancient Levantines

Comparisons combine:

- PCA
- Coordinate distances
- Monte Carlo ancestry modeling
- Population affinity modeling
- Comparative ancestry matrices

Multiple complementary approaches are used to evaluate consistency across independent analytical methods rather than relying on any single model.

#### 📉 Statistical Modeling

The repository incorporates multiple quantitative techniques, including:

- Euclidean distance calculations
- Coordinate averaging
- Linear scaling
- Proportional ancestry estimation
- Monte Carlo modeling
- Comparative statistical visualization

Together, these methods provide complementary perspectives on the same demographic questions.

#### 📊 Interactive Visualizations

Interactive visualizations were developed using **Plotly** and exported as standalone HTML files.

These include:

- Interactive ancestry charts
- Comparative visualizations
- Heatmap-style ancestry matrices

The interactive figures allow readers to explore population relationships dynamically.

#### 🎨 Publication Graphics

Figures were refined using **Inkscape** after computational generation to improve readability, standardize formatting, and produce publication-quality graphics suitable for presentation and publication.

# 📊 Major Analytical Components

The repository consists of several interconnected analytical modules.

#### 1. Population Structure

Examines genetic relationships among modern Horn Africans, ancient Northeast Africans, West Eurasians, Arabian populations, and Sudanese populations using PCA.

#### 2. Ethio-HG Ancestry Modeling

Investigates the contribution of deeply divergent East African ancestry within modern Horn Africans, Pastoral Neolithic populations, and ancient populations.

#### 3. Pastoral Neolithic Analyses

Explores internal Pastoral Neolithic population structure, scaled ancestry models, and relationships with later Horn African populations.

#### 4. Monte Carlo Modeling

Evaluates competing ancestry models using customized multi-target Monte Carlo simulations, producing ancestry estimates, distance scores, and reproducible outputs.

#### 5. Egyptian–Arabian Comparisons

Compares ancient and modern Egyptians, Southern Arabians, Yemenis, and Horn Africans to investigate changing affinity patterns through time.

#### 6. Comparative Ancestry Matrices

Uses heatmap-style comparative matrices to visualize ancestry-model outputs across multiple populations and alternative source configurations, highlighting relative ancestry proportions, model fit, and demographic patterns.

# 🔍 Principal Analytical Findings

The analyses revealed several recurring patterns that informed the broader historical interpretation presented in the accompanying Anthromadness article.

- #### Bronze-Age Nile Valley Connections

Multiple independent analyses suggest that demographic processes within the Bronze-Age Nile Valley may have contributed more substantially to later Horn African populations than models relying exclusively on Pastoral Neolithic ancestry.

- #### Multiple Migration Waves

Several computational analyses are more consistent with models involving multiple north-to-south population movements than a single migration event.

- #### East Cushitic Population History

Across multiple analytical approaches, East Cushitic-speaking populations consistently exhibit ancestry patterns compatible with multiple ancestral sources rather than a single founding population.

- #### Population Continuity

Several analyses indicate varying degrees of continuity between ancient Northeast African populations and present-day Horn Africans while also identifying evidence of later admixture.

- #### Interdisciplinary Convergence

A central objective of the project was to evaluate whether independent disciplines converge on similar historical interpretations.

Rather than relying on genetic evidence alone, the analyses were considered alongside:

- Archaeology
- Comparative linguistics
- Craniometrics
- Cultural anthropology
- Historical documentation

Together, these complementary lines of evidence provide a broader framework for interpreting Northeast African population history.

# ⚠️ Methodological Considerations

This repository is an **independent computational research project** rather than a formal archaeogenetics publication.

Several important limitations should be considered when interpreting the analyses:

- Global25 coordinates are reduced-dimensional representations rather than raw genotype data.
- PCA visualizes population structure but cannot independently establish admixture events or migration direction.
- Monte Carlo ancestry modeling provides best-fit statistical models rather than definitive historical reconstructions.
- Ancestry models depend on the selected reference populations and currently available ancient DNA.
- Ancient DNA sampling across Northeast Africa remains incomplete and future discoveries may refine existing interpretations.
- Archaeological, linguistic, historical, and genetic evidence each have independent limitations and should be interpreted collectively rather than in isolation.

Accordingly, the analyses are intended to contribute to ongoing discussions of Northeast African population history rather than provide definitive conclusions.

# 💡 What This Project Demonstrates

This project demonstrates the ability to independently design, execute, and communicate a large-scale computational research project integrating quantitative analysis with interdisciplinary scientific evidence.

Specifically, it demonstrates the ability to:

- Design reproducible analytical workflows
- Develop custom computational methodologies
- Analyze high-dimensional population-genetics data
- Integrate statistical modeling with interdisciplinary evidence
- Produce publication-quality visualizations
- Communicate complex scientific findings to technical and non-technical audiences

Beyond the computational analyses, the project demonstrates the ability to integrate evidence from population genetics, archaeology, comparative linguistics, craniometrics, and anthropology to solve complex analytical problems.

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
- Distance-based modeling
- Euclidean distance calculations
- Coordinate transformations
- Population clustering

#### Data Processing

- Data wrangling
- Data cleaning
- Data reshaping
- CSV processing
- Population filtering
- Statistical summaries

#### Data Visualization

- PCA visualizations
- Interactive Plotly dashboards
- Heatmap-style comparative matrices
- Ancestry proportion charts
- Scatter plots
- Publication-quality graphics

#### Scientific Research

- Literature review
- Comparative analysis
- Historical synthesis
- Archaeological interpretation
- Population genetics
- Computational anthropology

# 📦 Software & Libraries

#### Programming Language

- R

#### Analytical Software

- RStudio
- Microsoft Excel
- Inkscape

#### Core R Packages

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
    Visualization

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
```

#### Running the Analyses

Open the project in **RStudio** (or another R environment) and execute the desired scripts within:

```text
R Scripts/
```

The repository includes workflows for generating:

- Principal Component Analysis (PCA)
- Population affinity analyses
- Interactive ancestry visualizations
- Comparative ancestry matrices
- Modified Monte Carlo ancestry models
- Scaled Pastoral Neolithic analyses
- Publication-quality figures

## Modified nMonte Workflow

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

4. Execute the accompanying driver script located in:

```text
R Scripts/
```

The modified implementation exports ancestry summaries, mixture proportions, and distance metrics for downstream analysis and visualization.

# 📖 Related Research

The accompanying **Anthromadness** article expands upon the computational analyses presented throughout this repository by integrating evidence from:

- Population genetics
- Comparative linguistics
- Archaeology
- Craniometrics
- Cultural anthropology
- Historical documentation

Together, these disciplines provide the broader historical context for the computational findings presented here.

# 📚 Selected References

The accompanying research article synthesizes more than **100 scholarly sources** spanning:

- Ancient DNA
- Population genetics
- Archaeology
- Historical linguistics
- Anthropology
- Egyptology
- Nubian studies
- African history

For the complete bibliography, please refer to the accompanying **Anthromadness** article.

# 📬 Contact Me

**Email**

Awaleiabdi@outlook.com

**LinkedIn**

https://www.linkedin.com/in/awale-abdi/

---

<div align="center">

*Exploring humanity's past through computational analysis, statistical modeling, and interdisciplinary research.*

</div>
