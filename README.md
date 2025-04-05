# Healthcare Access and Hospitalization Risk Prediction

## Overview

This project explores how social determinants of health (SDOH)—including distance to healthcare facilities, poverty, and insurance coverage—impact estimated hospitalization risk at the county census tract level across the U.S.

We use public data from the AHRQ SDOH database and the HealthData.gov Covid Impact database to build an engineered hospitalization risk score, perform exploratory data analysis, and develop machine learning models for predictive insight.

## Objectives

* Clean and preprocess raw SDOH data and COVID Bed Utilization data.
* Merge datasets where applicable
* Engineer a hospitalization risk score using key social and geographic indicators.
* Test hypotheses about healthcare access disparities.
* Build a predictive model using regression techniques.
* Visualize risk patterns and feature importance.

## Data Sources

* **Agency for Healthcare Research and Quality (AHRQ) – SDOH Database at:** [https://www.ahrq.gov/sdoh/data-analytics/sdoh-data.html](https://www.ahrq.gov/sdoh/data-analytics/sdoh-data.html)
* **Data Download Source:** Census Tract Data 2009-2020 (2020) at: [https://www.ahrq.gov/downloads/sdoh/sdoh_2020_tract_1_0.xlsx](https://www.ahrq.gov/downloads/sdoh/sdoh_2020_tract_1_0.xlsx)
* **Data Level:** Census Tract (Annually)
* **Time Frame:** Most recent available year(s)

* **Healthdata.gov COVID-19 Reported Patient Impact and Hospital Capacity by Facility Database at:** [https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data)
*  **Data Download Source:** [https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/about_data)
*  **Data Level:** Hospital (Weekly)
*  **Time Frame:** Source contains data from 2020 to 2024

## Methodology

* Data Cleaning & Imputation
* Feature Engineering (Risk Score)
* Hypothesis Testing
* Predictive Modeling (Regression)
* Visualization: Heatmaps, Feature Importance, Risk Maps

## Key Features Used

* Distance to nearest emergency department and health clinic
* Poverty rate
* Uninsured rate (plus Medicaid and private insurance coverage)
* Disability rate and percentage of elderly population
* PM2.5 air pollution levels

## Tools & Technologies

* Python (Pandas, NumPy, scikit-learn, Matplotlib, Seaborn, XGBoost)
* R (tidyverse, dplyr, ggplot2, caret, readr)
* SQL (MSSSQL)
* Jupyter Notebooks
* GitHub for version control and collaboration

## Team
* June Lemieux
* Mehmet Comert
* Melody Rios
* Rea Kelolli
