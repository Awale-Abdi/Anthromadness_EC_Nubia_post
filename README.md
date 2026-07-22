<h1 align="center">Computational Anthropology & Population Genetics | Modeling the Bronze-Age Origins of East Cushitic Populations with R</h1>

This repository showcases an **end-to-end computational anthropology and population genetics workflow** developed over nearly **one year** using **R**, **Excel**, **Inkscape**, and population-genetics datasets derived from **[Eurogenes Global25 coordinates](https://eurogenes.blogspot.com/2019/07/getting-most-out-of-global25_12.html)**. The project integrates multivariate statistical analysis, ancestry modeling, simulation, interactive visualization, comparative linguistics, archaeology, craniometrics, cultural anthropology, and historical research to investigate the Bronze-Age origins and dispersal of East Cushitic-speaking populations across Northeast Africa.

Across **18 analytical scripts**, custom ancestry models, interactive visualizations, and more than **100 scholarly references**, I explored competing hypotheses regarding the origins of modern Cushitic and Ethiopian Semitic-speaking populations. Rather than relying on a single analytical technique, the project combines principal component analysis, Monte Carlo ancestry modeling, coordinate-based statistical analysis, customized computational workflows, and interdisciplinary evidence synthesis to evaluate alternative models of population history.

Although the case study focuses on Northeast Africa, the analytical capabilities demonstrated throughout, such as multivariate analysis, simulation, statistical modeling, interactive visualization, data transformation, reproducible research, and technical communication are transferable to a plethora fields such as computational biology, genetics, epidemiology, archaeology, historical research, and other data-intensive scientific disciplines.

The repository accompanies a **9,000-word research article** published on my anthropology blog, **Anthromadness**, where the quantitative analyses are integrated with archaeological, linguistic, historical, and anthropological evidence to present the complete research narrative.

# 📈 Project at a Glance

| | |
|:---|:---|
| **Development Time** | ~1 year |
| **Research Article** | 9,000+ words |
| **Analytical Scripts** | 18 custom R scripts |
| **Scholarly Sources** | 100+ references |
| **Primary Language** | R |
| **Additional Software** | Excel, Inkscape |
| **Primary Dataset** | Eurogenes Global25 PCA Coordinates |
| **Analytical Techniques** | PCA, Monte Carlo ancestry modeling, multivariate analysis, simulation, clustering, interactive visualization |
| **Research Fields** | Population Genetics, Anthropology, Archaeology, Comparative Linguistics, Historical & Cultural Anthropology |

# 📖 Featured Research Article

The repository accompanies the following long-form research article published on **Anthromadness**:

### [East Cushites were in Sudan and Egypt as recently as 1500 BCE?](https://anthromadness.blogspot.com/2025/11/east-cushites-were-in-sudan-and-egypt.html)

The article integrates quantitative population-genetics analyses with evidence from archaeology, historical linguistics, craniometrics, cultural anthropology, and ancient history to evaluate competing hypotheses regarding the emergence of modern Horn African populations.

Major topics include:

- Population structure of modern Horn Africans
- Pastoral Neolithic ancestry
- Bronze-Age Nile Valley populations
- East Cushitic dispersals and origins
- Ethiopian Semitic origins
- Egyptian and Arabian population relationships
- Ancient Nubia
- Archaeological evidence
- Historical linguistics
- Population-genetics modeling
- Cultural continuity
- Y-chromosome evidence
- Ancient DNA research

Rather than presenting isolated statistical outputs, the article demonstrates how computational analyses can be integrated with independent lines of historical and archaeological evidence to investigate complex questions in human population history.

# 🎯 Research Questions

The project investigates several interconnected questions regarding the demographic history of Northeast Africa.

Primary questions include:

- Can the genetic structure of modern Horn African populations be explained solely through Pastoral Neolithic ancestry?

- Do Bronze-Age Nile Valley populations provide a better explanation for the emergence of East Cushitic-speaking groups?

- What population relationships are observed between ancient Egyptians, Nubians, Arabian populations, and modern Horn Africans?

- Can multiple north-to-south migration events better explain the observed genetic structure than a single migration model?

- How do linguistic, archaeological, anthropological, and genetic evidence converge when examined together?

- Can customized computational modeling provide additional insight into unresolved questions regarding Northeast African population history?

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
Interactive Data Visualization
                ↓
Modified Monte Carlo Ancestry Modeling
                ↓
Scaled Pastoral Neolithic Simulations
                ↓
Population Comparisons
                ↓
Statistical Interpretation
                ↓
Integration with Archaeology
                ↓
Integration with Historical Linguistics
                ↓
Integration with Craniometrics
                ↓
Integration with Cultural Anthropology
                ↓
Historical Interpretation
                ↓
Scientific Writing & Publication
```

# 🧠 Analytical Objectives

The project was designed to demonstrate how computational analysis can be combined with interdisciplinary evidence to investigate complex historical questions.

Specifically, the objectives were to:

- Analyze population structure using Global25 principal-component coordinates.
- Compare ancient and modern Northeast African populations.
- Construct customized ancestry models using modified Monte Carlo methods.
- Evaluate multiple demographic scenarios through computational simulation.
- Produce publication-quality visualizations using R.
- Develop interactive ancestry charts and heatmaps.
- Compare Egyptian, Arabian, Sudanese, and Horn African population affinities.
- Integrate quantitative analyses with archaeological, linguistic, historical, and anthropological evidence.
- Translate complex statistical findings into an accessible long-form research article.

# 💼 Analytical Capabilities Demonstrated

Although this project focuses on anthropological research, the computational techniques demonstrated are broadly transferable across scientific and analytical disciplines.

These capabilities include:

- Multivariate statistical analysis
- Principal Component Analysis (PCA)
- Population clustering
- Distance-based modeling
- Monte Carlo simulation
- Data transformation
- Interactive visualization
- Scientific programming in R
- Reproducible analytical workflows
- Exploratory data analysis
- Scientific communication
- Research synthesis
- Publication-quality data visualization

# ⚙️ Computational Methods

The analyses in this repository were developed using a combination of **R**, **Excel**, and manually curated visualizations to investigate population relationships across Northeast Africa and Western Eurasia. Rather than relying on a single analytical technique, the project combines multiple complementary approaches, allowing each method to address different aspects of the broader research questions.

The workflow integrates principal component analysis, customized Monte Carlo ancestry modeling, proportional ancestry estimation, interactive visualization, heatmap generation, and comparative statistical analyses into a reproducible computational framework.

#### 📊 Principal Component Analysis (PCA)

Principal Component Analysis (PCA) forms the foundation of much of the repository.

Using **Eurogenes Global25 coordinates**, PCA visualizations were generated to investigate:

- Population clustering
- Relative genetic affinities
- Ancient vs modern population structure
- Bronze-Age migration patterns
- Egyptian, Arabian, Sudanese, and Horn African relationships
- Pastoral Neolithic ancestry
- East Cushitic and Ethiopian Semitic population structure

Unlike PCA calculated directly from raw genotype data, these analyses use the published **25-dimensional Global25 coordinate space**, allowing consistent comparisons between ancient and modern populations.

Multiple PCA visualizations were produced throughout the project to isolate different demographic questions while minimizing visual overcrowding.

#### 🧬 Modified Monte Carlo Ancestry Modeling

One of the largest computational components of the project involved modifying the popular **nMonte** ancestry modeling algorithm.

The customized implementation was designed to support analytical workflows beyond the original software by introducing features such as:

- Multi-target ancestry modeling
- Automatic export of complete ancestry summaries
- Distance-score reporting
- Batch processing
- Reproducible CSV output
- Simplified downstream visualization

The objective was not to replace established population-genetics software but to create a flexible research tool that improved automation and reproducibility while exploring alternative demographic scenarios.

The repository also includes the modified nMonte implementation for transparency and reproducibility.

#### 📈 Scaled Pastoral Neolithic Modeling

Several analyses focused on understanding the genetic structure of **Pastoral Neolithic (PN)** populations.

To explore alternative demographic scenarios, a custom workflow was developed that:

- Estimates Ethio-HG (Mota-related) ancestry within PN populations.
- Removes that ancestry proportion computationally.
- Rescales the remaining ancestry components proportionally.
- Produces adjusted ancestry matrices for downstream comparison.

This allowed simulated Pastoral Neolithic populations to be compared with Egyptian, Arabian, and modern Horn African populations under alternative demographic assumptions.

#### 🌍 Population Affinity Analyses

The repository contains numerous analyses examining population relationships between:

- Ancient Egyptians
- Nubians
- Pastoral Neolithic populations
- Natufians
- Arabian populations
- Modern Horn Africans
- Sudanese populations
- Ancient Levantines

Comparisons were performed using combinations of:

- PCA positioning
- Coordinate distances
- Ancestry proportion estimates
- Monte Carlo modeling
- Heatmaps
- Comparative visualization

Rather than treating any single analysis as definitive, multiple complementary approaches were used to evaluate consistency across independent computational methods.


#### 📉 Statistical Modeling

Several quantitative methods were combined throughout the project, including:

- Euclidean distance calculations
- Coordinate averaging
- Linear scaling
- Proportional ancestry estimation
- Monte Carlo optimization
- Comparative statistical visualization

Together, these methods provide multiple perspectives on the same demographic questions rather than relying on a single analytical framework.

#### 📊 Interactive Visualizations

Interactive visualizations were developed using **Plotly** and exported as standalone HTML files.

These include:

- Interactive ancestry proportion charts
- Heatmaps
- Comparative population visualizations

Interactive figures allow readers to explore population relationships dynamically rather than relying solely on static images.

####  🎨 Publication Graphics

Many figures were manually refined using **Inkscape** after computational generation.

This process included:

- Improving readability
- Optimizing label placement
- Standardizing colors
- Preparing publication-quality graphics
- Producing presentation-ready figures

The goal was to improve scientific communication without altering the underlying analytical results.

#### 📊 Major Analytical Components

The repository contains multiple independent but interconnected analytical modules.

##### 1. Population Structure

Examines the broad genetic relationships among:

- Modern Horn Africans
- Ancient Northeast Africans
- West Eurasians
- Arabian populations
- Sudanese populations

using PCA visualizations.

##### 2. Ethio-HG Ancestry Modeling

Investigates the contribution of deeply divergent East African ancestry within:

- Modern Horn Africans
- Pastoral Neolithic populations
- Ancient populations

through proportional ancestry estimation and visualization.

##### 3. Pastoral Neolithic Analyses

Explores:

- Internal PN population structure
- Scaled ancestry models
- Alternative ancestry compositions
- Relationships with later Horn African populations

##### 4. Monte Carlo Modeling

Evaluates competing ancestry models using customized multi-target Monte Carlo simulations.

Outputs include:

- Mixture proportions
- Distance scores
- Best-fitting ancestry combinations
- Exported reproducible results

##### 5. Egyptian–Arabian Comparisons

Several analyses compare:

- Ancient & Modern Egyptians
- Southern Arabian populations
- Modern Yemeni populations
- Modern Horn Africans

to investigate changing affinity patterns across time.

##### 6. Heatmap-Style Comparative Matrices

The repository contains heatmap-style comparative matrices that use conditional formatting to visualize ancestry-model outputs across multiple target populations and alternative source configurations.

These visualizations highlight:

- Relative ancestry proportions
- Population-level similarities and differences
- Alternative source-model fits
- Changes in ancestry composition under different modeling scenarios
- Comparative demographic patterns across Northeast African and Arabian populations

# 🔍 Principal Analytical Findings

The analyses collectively suggest several recurring patterns that motivated the broader historical interpretation presented in the accompanying Anthromadness article.

#### Bronze-Age Nile Valley Connections

Multiple independent lines of evidence suggest that demographic processes occurring within the Nile Valley during the Bronze Age may have played a larger role in shaping later Horn African populations than models relying exclusively on earlier Pastoral Neolithic dispersals.

#### Multiple Migration Waves

Rather than supporting a single migration event into the Horn of Africa, several computational analyses are consistent with models involving multiple north-to-south population movements occurring over extended periods.

#### East Cushitic Population History

Across the computational models, East Cushitic-speaking populations consistently exhibit relationships compatible with ancestry deriving from multiple ancestral sources rather than a single founding population.

The project explores how these observations compare with archaeological and linguistic evidence discussed in the accompanying article.

#### Egyptian and Arabian Affinities

Comparative analyses indicate that Egyptian and Arabian-related ancestry may reflect contributions from different historical periods rather than representing a single homogeneous ancestry component.

This distinction becomes particularly important when interpreting later demographic events involving Ethiopian Semitic-speaking populations.

#### Population Continuity

Several visualizations suggest varying degrees of continuity between ancient Northeast African populations and present-day populations of the Horn, while also illustrating evidence for later admixture events.

#### Interdisciplinary Convergence

One of the central goals of the project was not simply to generate computational outputs, but to evaluate whether independent disciplines converge upon similar historical interpretations.

Population-genetics analyses were therefore considered alongside:

- Archaeology
- Comparative linguistics
- Craniometric studies
- Cultural anthropology
- Historical documentation

Rather than treating any single field as decisive, the project emphasizes the value of integrating multiple independent lines of evidence when investigating ancient population history.

# ⚠️ Methodological Considerations

This repository is intended as an **independent computational research project** rather than a formal archaeogenetics publication.

Several important methodological considerations should therefore be kept in mind when interpreting the analyses:

- Global25 coordinates are reduced-dimensional representations rather than raw genotype data.
- PCA visualization illustrates relative population structure but cannot independently establish admixture events or migration direction.
- Monte Carlo ancestry modeling provides statistical approximations rather than definitive historical reconstructions.
- In conjunction with the previous point, opulation relationships depend upon the available reference populations included in each model.
- Ancient DNA sampling throughout Northeast Africa remains incomplete and future discoveries may substantially refine existing interpretations.
- Archaeological, linguistic, cultural, and genetic evidence each possess independent limitations and should not be interpreted in isolation.

Accordingly, the analyses presented throughout this repository are intended to contribute to ongoing discussions regarding Northeast African population history rather than provide definitive conclusions.

# 💡 What This Project Demonstrates

This project demonstrates the ability to independently design, execute, and communicate a large-scale computational research project integrating quantitative analysis with interdisciplinary scientific evidence.

Specifically, it showcases proficiency in:

- Scientific programming in R
- Multivariate statistical analysis
- Principal Component Analysis (PCA)
- Population-genetics visualization
- Monte Carlo ancestry modeling
- Simulation
- Statistical interpretation
- Interactive data visualization
- Heatmap generation
- Data transformation
- Exploratory data analysis
- Reproducible analytical workflows
- Scientific literature synthesis
- Technical writing
- Publication-quality figure development
- Communicating complex quantitative findings to diverse audiences

Beyond the computational analyses themselves, the project also demonstrates the ability to integrate statistical evidence with archaeology, comparative linguistics, historical sources, craniometrics, and cultural anthropology to investigate complex questions in human population history.

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
- Heatmaps
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

#### Programming Languages

- R

#### Analytical Software

- RStudio
- Microsoft Excel
- Inkscape

#### R Packages

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
    Source and target files
    Pastoral Neolithic datasets
    Population reference datasets
    Ancestry modeling inputs

Miscellaneous/
    Supporting files
    Maps
    Figures
    Additional visual assets

Outputs/
    PCA plots
    Interactive Plotly visualizations
    Heatmaps
    Monte Carlo outputs
    CSV summaries
    Publication-ready figures

R Scripts/
    18 analytical scripts
    Modified nMonte implementation
    Visualization scripts
    Data preparation scripts

README.md
```

---

# 📋 Replicating the Project

#### Clone the Repository

```bash
git clone https://github.com/Awale-Abdi/Anthromadness_EC_Nubia_post.git

cd Anthromadness_EC_Nubia_post
```

#### Install Required Packages

Install the required R packages:

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

Ensure the repository structure remains unchanged.

Datasets should remain inside:

```text
Datasets/
```

Analytical scripts should remain inside:

```text
R Scripts/
```

Generated outputs will be written to:

```text
Outputs/
```

#### Running the Analyses

Open the project in **RStudio** (or your preferred R environment) and execute the desired scripts located inside:

```text
R Scripts/
```

The repository contains scripts for generating:

- Principal Component Analysis (PCA) plots
- Population affinity visualizations
- Interactive ancestry charts
- Heatmaps
- Modified Monte Carlo ancestry models
- Scaled Pastoral Neolithic analyses
- Publication-ready figures

#### Modified nMonte Workflow

To reproduce the customized Monte Carlo analyses exactly as performed in this project:

1. Select the source and target datasets corresponding to the desired analysis.
2. Rename them to:

```text
source.txt
target.txt
```

3. Place both files in the same working directory as:

```text
Modified_nMonte.R
```

4. Execute the accompanying driver script contained within:

```text
R Scripts/
```

The modified implementation exports complete ancestry summaries, mixture proportions, and distance metrics for downstream visualization.

Because the implementation prioritizes flexibility over speed, it may execute more slowly than standard ancestry-modeling tools.

# 📖 Related Research

The complete analytical interpretation is available on **Anthromadness**.

The accompanying article integrates the computational analyses presented throughout this repository with:

- Population genetics
- Comparative linguistics
- Archaeology
- Craniometrics
- Cultural anthropology
- Historical documentation

to investigate the Bronze-Age origins and dispersal of East Cushitic-speaking populations across Northeast Africa.

# 📚 Selected References

The accompanying research article synthesizes more than **100 scholarly sources** spanning multiple disciplines.

These include research in:

- Ancient DNA
- Population genetics
- Archaeology
- Historical linguistics
- Anthropology
- Egyptology
- Nubian Studies
- African history

For the complete bibliography, please refer to [the accompanying Anthromadness article](https://anthromadness.blogspot.com/2025/11/east-cushites-were-in-sudan-and-egypt.html).

# 📬 Contact Me

**Email**

Awaleiabdi@outlook.com

**LinkedIn**

https://www.linkedin.com/in/awale-abdi/

---


<center>The intersection of data science and anthropology provides an opportunity to investigate some of humanity's oldest questions using modern computational methods. This project represents one exploration of that intersection.</center>
