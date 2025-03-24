# Iota-Capstone
 DS Capstone Repo
 
HEALTHCARE DATA ANALYSIS – HOSPITILAZION RISK PREDICTION:
Assessing Healthcare Access and Predicting Hospitalization Risk Using Socioeconomic and Geographic Factors.

Project Overview:
This proposal outlines a data analysis project to examine healthcare accessibility and develop a predictive model for hospitalization risk across U.S. census tracts using social determinants of health (SDOH). By analyzing relationships between healthcare access, socioeconomic status, and geographic variables, we aim to identify communities at elevated risk and provide actionable insights for public health officials, policymakers, and healthcare providers to address gaps in healthcare accessibility.

1	Introduction:
Healthcare accessibility remains a critical challenge in the United States, with considerable disparities in access and outcomes across different communities. While direct hospitalization data is often difficult to obtain, social determinants of health—including proximity to medical facilities, health insurance coverage, poverty levels, and disability rates—serve as valuable proxies for predicting hospitalization risk.
This project will analyze the Agency for Healthcare Research and Quality (AHRQ) Social Determinants of Health Database to understand these relationships and develop a predictive model for hospitalization risk. We expect our findings to provide actionable insights that can help address healthcare access disparities.

2	Problem Statement:
Many communities face barriers to healthcare access, which can lead to delayed treatment, increased emergency visits, and higher hospitalization rates. However, hospitalization risk factors are often hidden within socioeconomic and geographic disparities. 
This project will;
•	Clean and preprocess raw SDOH data to identify missing values and inconsistencies.
•	Engineer new features that approximate hospitalization risk based on existing social determinants.
•	Perform hypothesis testing to analyze disparities in healthcare access.
•	Develop a predictive model to estimate hospitalization risk based on socioeconomic and geographic factors.
3	Data Source and Description:
•	Data Source: Agency for Healthcare Research and Quality (AHRQ) - SDOH Database at https://www.ahrq.gov/sdoh/data-analytics/sdoh-data.html 
•	Data Download Source: Census Tract Data 2009-2020 (2020) https://www.ahrq.gov/downloads/sdoh/sdoh_2020_tract_1_0.xlsx
•	Data Structure: Census tract level variables, including;
o	Healthcare Access: Distance to emergency departments, clinics, and trauma centers.
o	Socioeconomic Factors: Poverty levels, median income, food stamp recipients.
o	Demographics: Age distribution, disability prevalence, veteran status.
o	Health Insurance Coverage: Percentage of uninsured, Medicaid, Medicare recipients.
o	Environmental Factors: PM2.5 pollution levels.

4	Research Questions and Hypotheses:
This project will explore the following research questions through statistical analysis and predictive modeling;

4.1	How does distance to healthcare facilities impact estimated hospitalization risk?
•	Ho: Distance to hospitals or clinics has no effect on hospitalization risk. 
•	H1: Longer distances to medical facilities correlate with higher estimated hospitalization risk.

4.2	How does socioeconomic status influence access to healthcare?
•	Ho: Income and poverty levels have no significant effect on health insurance coverage.
•	H1: Lower-income census tracts have higher uninsured rates and greater barriers to healthcare.

4.3	Can a predictive model estimate hospitalization risk using social determinants of health?
•	Ho: Socioeconomic and geographic factors cannot predict hospitalization risk.
•	H1: A machine learning model can use SDOH data to estimate hospitalization risk with reasonable accuracy.

5	Methodology:
This project will be carried out in the following stages;

5.1	Data Cleaning & Preprocessing:
The SDOH dataset has over 85500 observations and 329 features. Based on preprocessing analysis;
•	19 columns contain more than 30% missing values and will be removed. 
•	310 columns have less than 30% missing values and will be retained.
•	Missing values in retained columns will be imputed using appropriate techniques (mean, median, mode, or mode).
•	Normalize numerical variables (e.g., income, distances, pollution levels).
•	Convert categorical variables (e.g., insurance type) into numeric features.

5.2	Feature Engineering:
The target variable for modeling will be an engineered hospitalization risk score, derived from the following proxy factors;
•	Proximity to hospitals and clinics (higher distance = higher risk).
•	Uninsured rate (higher uninsured = higher risk).
•	Poverty rate (higher poverty = higher risk).
•	Disability and elderly population rates (higher variables = higher risk).
•	Air pollution exposure (higher PM2.5 value = higher respiratory risk).
•	The risk score may also be converted into categorical levels (Low, Medium, High) for classification tasks and weights (w1-w5) will be determined through correlation analysis with known health outcome.
Example formula: 
Risk Score = w1 × Distance to Hospital + w2 × Uninsured Rate + w3 × Poverty Rate + w4 × Disability Rate + w5 × PM2.5 Level 

5.3	Exploratory Data Analysis:
Following multi stage analytic approach can be implemented.
•	Statistical analysis of healthcare access variables.
•	Correlation analysis between socioeconomic factors and healthcare access metrics.
•	Geographic distribution of key predictors.

5.4	Hypothesis Testing:
•	T-tests/ANOVA to compare hospitalization risk proxies across different demographic groups.
•	Correlation analysis between poverty, insurance coverage, and hospital access.
•	Statistical tests examining relationships between all key variables.

5.5	Predictive Modeling:
To assess the model’s ability to predict hospitalization risk based on social and geographic factors, the following modeling strategy will be adopted;

5.5.1	Define Modeling Objective:
•	If using the continuous risk score as the target, we will apply regression models.
•	If using risk score categories (e.g., Low/Medium/High), we will use classification models.

5.5.2	Model Selection:
For classification task;
•	Logistic Regression for baseline interpretability.
•	Decision Trees and Random Forest Classifier to capture non-linear relationships.
•	XGBoost Classifier for advanced performance and feature importance.
For regression tasks;
•	Linear Regression as a baseline model.
•	Random Forest Regressor and XGBoost Regressor to model non-linearity and interactions to leverage ensemble methods of decision trees to capture complex relationship.
•	Ridge/Lasso Regression to manage multicollinearity and perform regularization.

5.5.3	Model Evaluation:
•	Classification models be evaluated using; 
o	Accuracy.
o	Precision.
o	Recall.
o	F1-Score
o	ROC – AUC.
•	Regression models be evaluated using;
o	RMSE.
o	MAE.
o	R-Square.
•	Cross-validation to ensure model generalizability to reduce the risk of overfitting and providing a more reliable estimate of its performance.

6	Planned Visualization:
•	Histogram and density plots of distance to care and income.
•	Correlation heatmap for predictor variables.
•	Risk score distribution by region.
•	Bar charts comparing hospitalization risk by demographic groups.
•	Feature importance plots from Random Forest/XGBoost.
•	ROC curves for classification models.
•	Actual vs. predicted plots for regression models.

7	Expected Key Insight:
Based on analysis, the following key insights are expected;
•	Identify regions with high estimated hospitalization risk based on social determinants.
•	Provide policy recommendations to improve healthcare access in underserved areas.
•	Demonstrate the feasibility of using public SDOH data to estimate hospitalization risk.

8	Target Audience:
Following audience may be intended for this project;
•	Public health agencies and policymakers who make decisions about healthcare accessibility and resource distribution.
•	Regional health system planners and hospital administrators seeking to identify underserved or high-risk areas.
•	Academic researchers and data scientists working in health analytics, equity, or public policy.

9	Conclusion:
This preliminary proposal outlines a comprehensive approach to analyzing healthcare accessibility and predicting hospitalization risk using socioeconomic and geographic factors. By leveraging the AHRQ Social Determinants of Health Database and applying robust data science methodologies, we aim to generate valuable insights that can inform healthcare policy and resource allocation decisions. The project aligns with current efforts to address healthcare disparities and improve access to care across diverse communities.
 

