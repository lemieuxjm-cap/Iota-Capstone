# Hospital Bed Utilization Monitoring Using SDOH Data 

## 📌 Overview

This project explores whether community-level social and structural determinants of health can serve as proxies for predicting hospital bed utilization.

Using publicly available datasets from the Agency for Healthcare Research and Quality (AHRQ) and HealthData.gov, we will:

* Construct an engineered risk score to estimate hospitalization vulnerability.
* Perform exploratory data analysis (EDA) to uncover patterns in SDOH indicators.
* Develop and evaluate machine learning models to predict risk at the census tract level.

## 🎯 Objectives

* Clean and preprocess raw SDOH and COVID hospital capacity datasets.
* Integrate data sources across varying geographic levels (tract and hospital).
* Engineer hospital bed utilization score using key socioeconomic and geographic indicators.
* Test hypotheses around healthcare access disparities and their relationship to bed utilization.
* Build and evaluate regression-based predictive models.
* Visualize hospital bed utilization score and feature importance at the national level.

## 🗂️ Data Sources

* **Agency for Healthcare Research and Quality (AHRQ) – SDOH Database at:** [https://www.ahrq.gov/sdoh/data-analytics/sdoh-data.html](https://www.ahrq.gov/sdoh/data-analytics/sdoh-data.html)
* Data Download Source: Census Tract Data 2009-2020 (2020) at: [https://www.ahrq.gov/downloads/sdoh/sdoh_2020_tract_1_0.xlsx](https://www.ahrq.gov/downloads/sdoh/sdoh_2020_tract_1_0.xlsx)
* Data Level: Census Tract (Annually)
* Time Frame: Most recent available year(s)

* **Healthdata.gov COVID-19 Reported Patient Impact and Hospital Capacity by Facility Database at:** [https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data)
*  Data Download Source: [https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data)
*  Data Level: Hospital (Weekly)
*  Time Frame: Source contains data from 2020 to 2024

## ⚙️ Methodology

* Data Cleaning: Standardized and imputed missing values for feature data.
* Feature Engineering: Created a hospital bed utilization score using weighted metrics such as poverty rate, access to care, and population vulnerability.
* Data Integration: Linked census tracts to nearby hospitals via geospatial methods for richer context.
* Exploratory Data Analysis (EDA): Uncovered regional patterns and trends using descriptive statistics and visualizations.
* Hypothesis Testing: Conducted statistical tests to assess the relationship between access to healthcare and hospitalization metrics.
* Modeling: Implemented regression-based models (e.g., Linear Regression, XGBoost) to predict hospital bed utilization based on SDOH features.
* Visualization: Developed heatmaps, choropleth maps, and feature importance plots to communicate findings.

## 🔑 Key Features

* Demographic Vulnerability: Percent elderly population, disability rate
* Geographic Context: Indicators of population density, land area, and urban characteristics
* Healthcare Access: Distance to nearest emergency department and medical/surgical ICUs
* Housing and Transportation: Characteristics about housing types and cost burdens, access to transportation including public transit
* Socioeconomic: Poverty rate and income levels, percent single parent families

## 🧰 Tools & Technologies

* Python: Data processing, modeling, visualization (pandas, scikit-learn, matplotlib, seaborn, xgboost)
* R: Data wrangling, statistical analysis, and plotting (tidyverse, dplyr, ggplot2)
* SQL: Querying and managing structured datasets (MSSQL)
* Jupyter Notebooks: Prototyping and documenting analysis
* GitHub: Version control and team collaboration
* MS Excel: Reviewing proposed and finalized datasets

## 👥 Team

* Mehmet Comert
* Rea Kelolli
* June Lemieux
* Melody Rios 
