# 🏥 Non-COVID Hospital Bed Utilization Monitoring Using SDOH Data (County-Level, 2020) 

## 📌 Overview

This project investigates **how community-level social and structural determinants of health (SDOH) predict and explain variation in non-COVID hospital bed utilization** across U.S. counties during 2020.

Using publicly available datasets from the **Agency for Healthcare Research and Quality (AHRQ)** and **HealthData.gov**, we **combined SDOH indicators with aggregated hospital capacity data**, we will:

* Analyze the relationship between social and geographic factors and hospital resource use.
* Perform exploratory data analysis (EDA) to uncover key trends in health access and vulnerability.
* Develop and evaluate predictive models to estimate **non-COVID hospital bed utilization ratios** at the **county level**.

## 🎯 Objectives

* Clean and preprocess raw SDOH and COVID hospital capacity datasets.
* Integrate data sources across varying geographic levels (e.g., county and hospital service areas).
* Use an observed **hospital bed utilization ratio** (non-COVID) as the target outcome.
* Assess how social and healthcare access disparities relate to non-COVID hospital bed utilization patterns.
* Examine how socioeconomic, geographic, and access-related factors influence hospital demand.
* Build and evaluate predictive models using **regression and dimensionality reduction techniques** to estimate hospital bed utilization and identify influential SDOH factors.
* Visualize utilization patterns and feature importance at national level to support public health decision-making.


## 🗂️ Data Sources

* **Agency for Healthcare Research and Quality (AHRQ) – SDOH Database at:** [https://www.ahrq.gov/sdoh/data-analytics/sdoh-data.html](https://www.ahrq.gov/sdoh/data-analytics/sdoh-data.html)
* Data Download Source: Census Tract Data 2009-2020 (2020) at: [https://www.ahrq.gov/downloads/sdoh/sdoh_2020_tract_1_0.xlsx](https://www.ahrq.gov/downloads/sdoh/sdoh_2020_tract_1_0.xlsx)
* Data Level: Census Tract (Released annually; aggregated to County for analysis).
* Time Frame: 2020 (Most recent available complete year available).

* **Healthdata.gov COVID-19 Reported Patient Impact and Hospital Capacity by Facility Database at:** [https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data)
*  Data Download Source: [https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data)
*  Data Level: Hospital-level (Weekly; aggregated to County)
*  Time Frame: Filtered to 2020, focusing on **non-COVID bed utilization** (Source contains data from 2020 to 2024).
*  Relevance: Contains the target variable for hospital resource use.

## ⚙️ Methodology

* Data Cleaning: Standardized and validated variable formats, handled missing values, and filtered records to the 2020 time frame.
* Preprocessing Evaluation: Conducted statistical tests (e.g., Shapiro-Wilk for normality, Box-Cox transformation checks) and compared multiple imputation strategies (e.g., mode, MICE, random forest) to select appropriate handling for missing data.
* Data Integration: Merged SDOH data with hospital capacity data at the county level using geographic identifiers.
* Exploratory Data Analysis (EDA): Analyzed distributions, regional patterns, and key socioeconomic indicators using summary statistics and visualizations.
* Multicollinearity Checks: Used variance inflation factor (VIF) and correlation analysis to identify and reduce redundancy among predictors.
* Modeling: Explored predictive models using **regularized regression techniques** (e.g., Ridge, Lasso) to estimate non-COVID hospital bed utilization.  
  Residual diagnostics indicated heteroscedasticity, prompting additional evaluations.  
  Applied **dimensionality reduction methods** (e.g., Principal Component Analysis) to manage multicollinearity and enhance interpretability.  
  Models were assessed using standard performance metrics and diagnostic plots.
* Visualization: Created bar charts, scatterplots, heatmaps, and choropleth maps to present findings and communicate insights to stakeholders.


## 🔑 Key Features

* Demographic Vulnerability: Percent elderly population, disability rate.
* Geographic Context:  Population density, rural vs urban characteristics, land area.
* Healthcare Access: Distance to nearest emergency department and medical/surgical ICUs. Metro/Micro designation.
* Housing and Transportation: Characteristics about housing types and cost burdens, percent renter household, access to transportation including public transit.
* Socioeconomic: Poverty indicators and income levels, percent single parent families.

## 🧰 Tools & Technologies

* Python: Data processing, modeling, visualization (pandas, scikit-learn, matplotlib, seaborn, xgboost)
* R: Data wrangling, statistical analysis, and plotting (tidyverse, dplyr, ggplot2)
* SQL: Querying and managing structured datasets (MSSQL)
* Jupyter Notebooks: Prototyping and documenting analysis
* GitHub: Version control and team collaboration
* MS Excel: Reviewing proposed and finalized datasets

## 📂 Repository Organization

This repository includes two main subfolders to clearly separate finalized work from exploratory development:

- **'final_delivery/'**  
  Contains the finalized deliverables, including:
  - Polished notebooks (modeling + EDA),
  - Final cleaned dataset,
  - Final report,
  - Polished figures used in the report.

- **'development_test/'**  
  Contains exploratory notebooks, diagnostic scripts, raw and intermediate datasets, and early-stage visualizations and diagnostics created throughout the project lifecycle.

👉 The **full set of exploratory EDA visualizations and diagnostic materials** is archived in:  
'development_test/visualizations/EDAVisualizations/'.

👉 The **final polished figures** are located in:  
'final_delivery/visualizations/EDAVisualizations/figures/'  
for quick reference and reuse.

---

## ⚙️ Running the Notebooks

- The notebooks were developed and executed in **Google Colab.**
- For local execution in **Jupyter Notebook:**
  - Add 'print()' statements around outputs if needed to ensure proper display,
  - Install 'rpy2' if using notebooks with R code cells:
    '''bash
    pip install rpy2
    '''

- R code chunks inside the notebooks automatically handle R package installations via 'install.packages()' calls inside '%%R' cells.  
  **No additional manual setup is required beyond the standard dependencies.**

## 👥 Team

* June Lemieux
* Mehmet Comert
* Melody Rios
* Rea Kelolli  
