# 🧪 Development & Testing Archive

This folder contains exploratory analyses, development notebooks, test scripts, and preliminary data processing steps created throughout the capstone project lifecycle.

## 📂 Folder Structure

- 'code/': Exploratory notebooks, alternative modeling approaches, and test scripts.
- 'data/': Raw, intermediate, and testing datasets, including the full 'PreliminaryMergedData/' folder with SQL scripts and merging steps.
- 'visualizations/EDAVisualizations/': EDA plots, diagnostic charts, and early-stage visualizations.

## 🔑 Highlights

- **Data Merging & SQL Scripts:**  
  All initial data acquisition and merging steps are archived in 'data/PreliminaryMergedData/'.

- **EDA & Diagnostics:**  
  The 'visualizations/EDAVisualizations/' folder contains visual assets and notebooks from the Module 03 EDA report and additional phases of exploratory work.

## 🛠️ Running the Code

- The notebooks were developed and executed in **Google Colab.**
- If running in **Jupyter Notebook locally:**
  - You may need to add 'print()' around output cells for proper display.
  - Ensure you have 'rpy2' installed to execute R code chunks:
    '''bash
    pip install rpy2
    '''
- R package dependencies are handled inside the notebook using 'install.packages()' in the '%%R' cells.

## ⚠️ Note

These materials are provided for documentation and transparency. The polished final deliverables are located in the 'final_delivery/' folder.

