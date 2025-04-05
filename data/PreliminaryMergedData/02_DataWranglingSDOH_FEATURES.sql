--select * from JML01

--select * from JML01 where LEN(COUNTYFIPS)<>5 --0

--test each column isnumeric; --test each column is not ''
/* Data Cleansing
Step 1: identify any invalid COUNTRYFIPS values
select * from JML01 where LEN(COUNTYFIPS)<>5 --0

Step 2: identify and replace empty strings with zero
update JML01 set ACS_TOT_POP_POV= '0' where ACS_TOT_POP_POV = '';
update JML01 set ACS_AVG_HH_SIZE= '0' where ACS_AVG_HH_SIZE = '';
update JML01 set ACS_PCT_DISABLE= '0' where ACS_PCT_DISABLE = '';
update JML01 set ACS_PCT_ENGL_NOT_ALL= '0' where ACS_PCT_ENGL_NOT_ALL = '';
update JML01 set ACS_PCT_AGE_ABOVE65= '0' where ACS_PCT_AGE_ABOVE65 = '';
update JML01 set ACS_PCT_HH_INTERNET= '0' where ACS_PCT_HH_INTERNET = '';
update JML01 set ACS_PCT_CHILD_1FAM= '0' where ACS_PCT_CHILD_1FAM = '';
update JML01 set ACS_MEDIAN_HH_INC= '0' where ACS_MEDIAN_HH_INC = '';
update JML01 set ACS_PCT_HH_INC_10000= '0' where ACS_PCT_HH_INC_10000 = '';
update JML01 set ACS_PCT_POV_ASIAN= '0' where ACS_PCT_POV_ASIAN = '';
update JML01 set ACS_PCT_POV_BLACK= '0' where ACS_PCT_POV_BLACK = '';
update JML01 set ACS_PCT_POV_HISPANIC= '0' where ACS_PCT_POV_HISPANIC = '';
update JML01 set ACS_PCT_POV_WHITE= '0' where ACS_PCT_POV_WHITE = '';
update JML01 set ACS_PCT_HH_FOOD_STMP= '0' where ACS_PCT_HH_FOOD_STMP = '';
update JML01 set ACS_PCT_HH_FOOD_STMP_BLW_POV= '0' where ACS_PCT_HH_FOOD_STMP_BLW_POV = '';
update JML01 set ACS_PCT_LT_HS= '0' where ACS_PCT_LT_HS = '';
update JML01 set ACS_PCT_HH_ALONE_ABOVE65= '0' where ACS_PCT_HH_ALONE_ABOVE65 = '';
update JML01 set ACS_PCT_HU_COAL= '0' where ACS_PCT_HU_COAL = '';
update JML01 set ACS_PCT_HU_MOBILE_HOME= '0' where ACS_PCT_HU_MOBILE_HOME = '';
update JML01 set ACS_PCT_OWNER_HU_COST_30PCT= '0' where ACS_PCT_OWNER_HU_COST_30PCT = '';
update JML01 set ACS_PCT_RENTER_HU_COST_30PCT= '0' where ACS_PCT_RENTER_HU_COST_30PCT = '';
update JML01 set ACS_PCT_RENTER_HU_COST_50PCT= '0' where ACS_PCT_RENTER_HU_COST_50PCT = '';
update JML01 set ACS_PCT_RENTER_HU= '0' where ACS_PCT_RENTER_HU = '';
update JML01 set ACS_PCT_COMMT_60MINUP= '0' where ACS_PCT_COMMT_60MINUP = '';
update JML01 set ACS_PCT_HU_NO_VEH= '0' where ACS_PCT_HU_NO_VEH = '';
update JML01 set ACS_PCT_PUBL_TRANSIT= '0' where ACS_PCT_PUBL_TRANSIT = '';
update JML01 set ACS_PCT_MEDICAID_ANY= '0' where ACS_PCT_MEDICAID_ANY = '';
update JML01 set ACS_PCT_MEDICARE_ONLY= '0' where ACS_PCT_MEDICARE_ONLY = '';
update JML01 set ACS_PCT_PRIVATE_ANY= '0' where ACS_PCT_PRIVATE_ANY = '';
update JML01 set ACS_PCT_PUBLIC_ONLY= '0' where ACS_PCT_PUBLIC_ONLY = '';
update JML01 set ACS_PCT_UNINSURED= '0' where ACS_PCT_UNINSURED = '';
update JML01 set ACS_PCT_UNINSURED_BELOW64= '0' where ACS_PCT_UNINSURED_BELOW64 = '';
update JML01 set CEN_AREALAND_SQM_TRACT= '0' where CEN_AREALAND_SQM_TRACT = '';
update JML01 set CEN_POPDENSITY_TRACT= '0' where CEN_POPDENSITY_TRACT = '';
update JML01 set WUSTL_AVG_PM25= '0' where WUSTL_AVG_PM25 = '';
update JML01 set POS_DIST_ED_TRACT= '0' where POS_DIST_ED_TRACT = '';
update JML01 set POS_DIST_MEDSURG_ICU_TRACT= '0' where POS_DIST_MEDSURG_ICU_TRACT = '';
update JML01 set POS_DIST_TRAUMA_TRACT= '0' where POS_DIST_TRAUMA_TRACT = '';
update JML01 set POS_DIST_CLINIC_TRACT= '0' where POS_DIST_CLINIC_TRACT = '';
*/

/*
Step 3
a - group records by FIPS to calculate FIPS-level bed utilization
*/
--GROUP BY SUM ON EACH COLUMN
SELECT	
	COUNTYFIPS
	,[STATE]
	,COUNTY
	,REGION
	,SUM(CAST(ACS_TOT_POP_POV AS DECIMAL(10, 0))) AS ACS_TOT_POP_POV_sum
	,AVG(CAST(ACS_AVG_HH_SIZE AS DECIMAL(10, 0))) AS ACS_AVG_HH_SIZE_avg
	,AVG(CAST(ACS_PCT_DISABLE AS DECIMAL(10, 0))) AS ACS_PCT_DISABLE_avg
	,AVG(CAST(ACS_PCT_ENGL_NOT_ALL AS DECIMAL(10, 0))) AS ACS_PCT_ENGL_NOT_ALL_avg
	,AVG(CAST(ACS_PCT_AGE_ABOVE65 AS DECIMAL(10, 0))) AS ACS_PCT_AGE_ABOVE65_avg
	,AVG(CAST(ACS_PCT_HH_INTERNET AS DECIMAL(10, 0))) AS ACS_PCT_HH_INTERNET_avg
	,AVG(CAST(ACS_PCT_CHILD_1FAM AS DECIMAL(10, 0))) AS ACS_PCT_CHILD_1FAM_avg
	,SUM(CAST(ACS_MEDIAN_HH_INC AS DECIMAL(10, 0))) AS ACS_MEDIAN_HH_INC_sum
	,AVG(CAST(ACS_PCT_HH_INC_10000 AS DECIMAL(10, 0))) AS ACS_PCT_HH_INC_10000_avg
	,AVG(CAST(ACS_PCT_POV_ASIAN AS DECIMAL(10, 0))) AS ACS_PCT_POV_ASIAN_avg
	,AVG(CAST(ACS_PCT_POV_BLACK AS DECIMAL(10, 0))) AS ACS_PCT_POV_BLACK_avg
	,AVG(CAST(ACS_PCT_POV_HISPANIC AS DECIMAL(10, 0))) AS ACS_PCT_POV_HISPANIC_avg
	,AVG(CAST(ACS_PCT_POV_WHITE AS DECIMAL(10, 0))) AS ACS_PCT_POV_WHITE_avg
	,AVG(CAST(ACS_PCT_HH_FOOD_STMP AS DECIMAL(10, 0))) AS ACS_PCT_HH_FOOD_STMP_avg
	,AVG(CAST(ACS_PCT_HH_FOOD_STMP_BLW_POV AS DECIMAL(10, 0))) AS ACS_PCT_HH_FOOD_STMP_BLW_POV_avg
	,AVG(CAST(ACS_PCT_LT_HS AS DECIMAL(10, 0))) AS ACS_PCT_LT_HS_avg
	,AVG(CAST(ACS_PCT_HH_ALONE_ABOVE65 AS DECIMAL(10, 0))) AS ACS_PCT_HH_ALONE_ABOVE65_avg
	,AVG(CAST(ACS_PCT_HU_COAL AS DECIMAL(10, 0))) AS ACS_PCT_HU_COAL_avg
	,AVG(CAST(ACS_PCT_HU_MOBILE_HOME AS DECIMAL(10, 0))) AS ACS_PCT_HU_MOBILE_HOME_avg
	,AVG(CAST(ACS_PCT_OWNER_HU_COST_30PCT AS DECIMAL(10, 0))) AS ACS_PCT_OWNER_HU_COST_30PCT_avg
	,AVG(CAST(ACS_PCT_RENTER_HU_COST_30PCT AS DECIMAL(10, 0))) AS ACS_PCT_RENTER_HU_COST_30PCT_avg
	,AVG(CAST(ACS_PCT_RENTER_HU_COST_50PCT AS DECIMAL(10, 0))) AS ACS_PCT_RENTER_HU_COST_50PCT_avg
	,AVG(CAST(ACS_PCT_RENTER_HU AS DECIMAL(10, 0))) AS ACS_PCT_RENTER_HU_avg
	,AVG(CAST(ACS_PCT_COMMT_60MINUP AS DECIMAL(10, 0))) AS ACS_PCT_COMMT_60MINUP_avg
	,AVG(CAST(ACS_PCT_HU_NO_VEH AS DECIMAL(10, 0))) AS ACS_PCT_HU_NO_VEH_avg
	,AVG(CAST(ACS_PCT_PUBL_TRANSIT AS DECIMAL(10, 0))) AS ACS_PCT_PUBL_TRANSIT_avg
	,AVG(CAST(ACS_PCT_MEDICAID_ANY AS DECIMAL(10, 0))) AS ACS_PCT_MEDICAID_ANY_avg
	,AVG(CAST(ACS_PCT_MEDICARE_ONLY AS DECIMAL(10, 0))) AS ACS_PCT_MEDICARE_ONLY_avg
	,AVG(CAST(ACS_PCT_PRIVATE_ANY AS DECIMAL(10, 0))) AS ACS_PCT_PRIVATE_ANY_avg
	,AVG(CAST(ACS_PCT_PUBLIC_ONLY AS DECIMAL(10, 0))) AS ACS_PCT_PUBLIC_ONLY_avg
	,AVG(CAST(ACS_PCT_UNINSURED AS DECIMAL(10, 0))) AS ACS_PCT_UNINSURED_avg
	,AVG(CAST(ACS_PCT_UNINSURED_BELOW64 AS DECIMAL(10, 0))) AS ACS_PCT_UNINSURED_BELOW64_avg
	,AVG(CAST(CEN_AREALAND_SQM_TRACT AS DECIMAL(10, 0))) AS CEN_AREALAND_SQM_TRACT_avg
	,AVG(CAST(CEN_POPDENSITY_TRACT AS DECIMAL(10, 0))) AS CEN_POPDENSITY_TRACT_avg
	,AVG(CAST(WUSTL_AVG_PM25 AS DECIMAL(10, 0))) AS WUSTL_AVG_PM25_avg
	,AVG(CAST(POS_DIST_ED_TRACT AS DECIMAL(10, 0))) AS POS_DIST_ED_TRACT_avg
	,AVG(CAST(POS_DIST_MEDSURG_ICU_TRACT AS DECIMAL(10, 0))) AS POS_DIST_MEDSURG_ICU_TRACT_avg
	,AVG(CAST(POS_DIST_TRAUMA_TRACT AS DECIMAL(10, 0))) AS POS_DIST_TRAUMA_TRACT_avg
	,AVG(CAST(POS_DIST_CLINIC_TRACT AS DECIMAL(10, 0))) AS POS_DIST_CLINIC_TRACT_avg
FROM JML01
GROUP BY COUNTYFIPS
	,[STATE]
	,COUNTY
	,REGION

/*
Step 4: Realized ACS_MEDIAN_HH_INC_sum should have been an average (not total)
Recalc and replace data
*/

--to identify breadth of error (2918 records)
;WITH NewHHInc AS (
SELECT	
	COUNTYFIPS
	,[STATE]
	,COUNTY
	,REGION
	,AVG(CAST(ACS_MEDIAN_HH_INC AS DECIMAL(10, 0))) AS ACS_MEDIAN_HH_INC_avg
FROM JML01
GROUP BY COUNTYFIPS
	,[STATE]
	,COUNTY
	,REGION)
SELECT a.COUNTYFIPS, a.ACS_MEDIAN_HH_INC_sum, b.ACS_MEDIAN_HH_INC_avg 
FROM JML03 a
JOIN NewHHInc b on a.COUNTYFIPS = b.COUNTYFIPS
WHERE a.ACS_MEDIAN_HH_INC_sum <> b.ACS_MEDIAN_HH_INC_avg

--to update values
/*
update a
set a.ACS_MEDIAN_HH_INC_sum = b.ACS_MEDIAN_HH_INC_avg
from JML03 a
inner join NewHHInc b on a.COUNTYFIPS = b.countyfips 
where a.ACS_MEDIAN_HH_INC_sum <> b.ACS_MEDIAN_HH_INC_avg
*/

/*
Step 5
query results were manually copied to an Excel sheet and saved as a .csv for future import
*/