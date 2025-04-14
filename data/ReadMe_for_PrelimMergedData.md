# Summary of datacleansing, processing, and merging

## DATA SOURCES
### SDOH dataset
* Data file: /data/SDOH_2020_tract_1_0.xlsx 
* Source: https://www.ahrq.gov/sdoh/data-analytics/sdoh-data.html

### COVID dataset
* Data file: COVID_19_Reported_Patient_Impact_and_Hospital_Capacity_by_Facility_20250402.csv
* Too large for our gitHub repo
* Source: https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u/data_preview

## DATA OUTPUTS
### Used in MERGING section
* Grouped and aggregated SDOH information
  * Data File: /data/PreliminaryMergedData/SDOH_FIPS_FEAT.csv
* Grouped and aggregated hospital utilization information
  * Data File: /data/PreliminaryMergedData/HOSP_FIPS_UTIL.csv
### To be delivered to group for use in models
* /data/PreliminaryMergedData/June_MERGED_SDOH_PLUS_UTIL.xlsx

## SETUP
1. I used MS SQLServer to perform this work.
2. I imported /data/SDOH_2020_tract_1_0.xlsx file into SQLServer as table JML01
3. I removed the columns that were not part of our data dictionary
4. I imported COVID_19_Reported_Patient_Impact_and_Hospital_Capacity_by_Facility_20250402.csv file into SQLServer as table JML02 
  * I removed all rows outside of 2020

## WRANGLING
### Referencing /data/PreliminaryMergedData/01_DataWranglingHOSP_FIPS_UTIL.sql
1. Identify and replace empty strings or '-999999' with zero
2. Identify and replace invalid or add missing zipcodes and FIPS
3. Group records by hospital to sum total_beds_7_day_avg,inpatient_beds_used_7_day_avg,inpatient_beds_used_covid_7_day_avg
4. Compute hospital-level bed utilization
5. Group records by FIPS to calculate FIPS-level bed utilization
6. Results from query were manually copied to an Excel sheet and saved as /data/PreliminaryMergedData/HOSP_FIPS_UTIL.csv for future import 

### Referencing /data/PreliminaryMergedData/02_DataWranglingSDOH_FEATURES.sql
1. Identify any invalid COUNTRYFIPS values (none found)
2. Identify and replace empty strings with zero
3. Group records by FIPS to calculate FIPS-level bed utilization
4. Realized ACS_MEDIAN_HH_INC_sum should have been an average (not total)
5. Recalc and replace data
6. Results from query were manually copied to an Excel sheet and saved as /data/PreliminaryMergedData/SDOH_FIPS_FEAT.csv for future import

## MERGING
### Referencing 03_DataMerging.sql
1. Import /data/PreliminaryMergedData/SDOH_FIPS_FEAT.csv file into SQLServer as table JML03
2. Import /data/PreliminaryMergedData/HOSP_FIPS_UTIL.csv file into SQLServer as table JML04
3. Merge JML04 into JML03 (matching on FIPS code)
4. If matching FIPS codes were found, the observations were updated with the FIPSUtil and is_metro_micro data  
5. If matching FIPS codes were not found, new observation records were created in JML03 with null feature data and populated FIPSUtil and is_metro_micro data 

## DELIVERY
1. The merged dataset in JML03 was exported from SQL Server to a .csv file
2. The .csv file was manually opened in Excel and resaved as /data/PreliminaryMergedData/June_MERGED_SDOH_PLUS_UTIL.xlsx
3. This file was shared with the team in a shared Google folder

## ARTIFACTS
These artifacts are located in the https://github.com/lemieuxjm-cap/Iota-Capstone/data/PreliminaryMergedData
* 01_DataWranglingHOSP_FIPS_UTIL.sql
* 02_DataWranglingSDOH_FEATURES.sql
* 03_DataMerging.sql
* CreateSQLTableJML01.sql
* CreateSQLTableJML02.sql
* CreateSQLTableJML03.sql
* CreateSQLTableJML04.sql
* HOSP_FIPS_UTIL.csv
* SDOH_FIPS_FEAT.csv
* June_MERGED_SDOH_PLUS_UTIL.xlsx
