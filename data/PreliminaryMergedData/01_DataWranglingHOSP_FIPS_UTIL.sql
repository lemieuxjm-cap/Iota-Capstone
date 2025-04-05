/* Data Cleansing
Step 1: identify and replace empty strings or '-999999' with zero
--select * from JML02 WHERE total_beds_7_day_avg = '' OR total_beds_7_day_avg = '-999999' --18974
--select * from JML02 WHERE inpatient_beds_used_7_day_avg = '' OR inpatient_beds_used_7_day_avg = '-999999'  --33696
--select * from JML02 WHERE inpatient_beds_used_covid_7_day_avg = '' OR inpatient_beds_used_covid_7_day_avg = '-999999'  --61931

UPDATE JML02 SET total_beds_7_day_avg = '0' WHERE total_beds_7_day_avg = '' OR total_beds_7_day_avg = '-999999'
UPDATE JML02 SET inpatient_beds_used_7_day_avg = '0' WHERE inpatient_beds_used_7_day_avg = '' OR inpatient_beds_used_7_day_avg = '-999999'
UPDATE JML02 SET inpatient_beds_used_covid_7_day_avg = '0' WHERE inpatient_beds_used_covid_7_day_avg = '' OR inpatient_beds_used_covid_7_day_avg = '-999999'

Step 2: identify and replace invalid or add missing zipcodes and FIPS
--select * from JML02 WHERE LEN(zip) <> 5 ORDER BY hospital_name;  --19
--select * from JML02 where hospital_name = 'HonorHealth Sonoran Emergency Center'  --85085
--select * from JML02 where hospital_name = 'Care One at Hackensack UMC at Pascack Valley'  --07675
--select * from JML02 where hospital_name = 'Our Lady of Lourdes Scott ED'  --70583
--select * from JML02 where hospital_name = 'Wesley Woodlawn Hospital & ER'  --67220

update JML02 SET zip = '85085' where hospital_name = 'HonorHealth Sonoran Emergency Center'  --85085
update JML02 SET zip = '07675' where hospital_name = 'Care One at Hackensack UMC at Pascack Valley'  --07675
update JML02 SET zip = '70583' where hospital_name = 'Our Lady of Lourdes Scott ED'  --70583
update JML02 SET zip = '67220' where hospital_name = 'Wesley Woodlawn Hospital & ER'  --67220

update JML02 SET fips_code = '04013' where hospital_name = 'HonorHealth Sonoran Emergency Center'  --Maricopa County AZ
update JML02 SET fips_code = '34003' where hospital_name = 'Care One at Hackensack UMC at Pascack Valley'  --Bergen County NJ
update JML02 SET fips_code = '22055' where hospital_name = 'Our Lady of Lourdes Scott ED'  --Lafayette Parish LA
update JML02 SET fips_code = '20015' where hospital_name = 'Wesley Woodlawn Hospital & ER'  --Butler County KS

select * from JML02 WHERE LEN(fips_code) <> 5 order by zip;  --449 brought down to 115
select zip, count(*) from JML02 WHERE LEN(fips_code) <> 5 group by zip order by count(*) desc;  --449

select * from JML02 where zip = '00765'
update JML02 SET fips_code = '72147' where zip = '00765' and fips_code = ''

select * from JML02 where fips_code = '72127'  update JML02 SET is_metro_micro = 'true' where fips_code = '72127' and is_metro_micro = 'false'
select * from JML02 where fips_code = '72097'  update JML02 SET is_metro_micro = 'true' where fips_code = '72097' and is_metro_micro = 'false'
select * from JML02 where fips_code = '34003'  update JML02 SET is_metro_micro = 'true' where fips_code = '34003' and is_metro_micro = 'false'
select * from JML02 where fips_code = '22071'  update JML02 SET is_metro_micro = 'true' where fips_code = '22071' and is_metro_micro = 'false'
select * from JML02 where fips_code = '22079'  update JML02 SET is_metro_micro = 'true' where fips_code = '22079' and is_metro_micro = 'false'
select * from JML02 where fips_code = '02020'  update JML02 SET is_metro_micro = 'true' where fips_code = '02020' and is_metro_micro = 'false'
select * from JML02 where fips_code = '02090'  update JML02 SET is_metro_micro = 'true' where fips_code = '02090' and is_metro_micro = 'false'
*/

/*
Step 3
a - group records by hospital to sum total_beds_7_day_avg,inpatient_beds_used_7_day_avg,inpatient_beds_used_covid_7_day_avg
b - compute hospital-level bed utilization
c - group records by FIPS to calculate FIPS-level bed utilization
*/
;WITH HospTotals AS (
--group by hospital
SELECT 
	hospital_pk
	, REPLACE(hospital_name, ',', '') as hospital_name
	, [state]
	, is_metro_micro
	, fips_code
	, SUM(CAST(total_beds_7_day_avg AS DECIMAL(10, 0))) AS Sum_Totals
	, SUM(CAST(inpatient_beds_used_7_day_avg AS DECIMAL(10, 0))) AS Sum_TotUsed
	, SUM(CAST(inpatient_beds_used_covid_7_day_avg AS DECIMAL(10, 0))) AS Sum_TotUsedCovid
	FROM JML02 
	GROUP BY hospital_pk, hospital_name, [state], hospital_subtype, is_metro_micro, fips_code)
, HospBedUtils AS (
	--calc hospital bed utils
	SELECT
		hospital_pk
		, hospital_name
		, [state]
		, is_metro_micro
		, fips_code--, Sum_Totals
		, (Sum_TotUsed - Sum_TotUsedCovid) AS NetBeds
		, (Sum_TotUsed - Sum_TotUsedCovid) / NULLIF(Sum_Totals, 0) AS HospBedUtil
		FROM HospTotals
		WHERE Sum_Totals > 0)
--group by FIPS
SELECT fips_code
	, [state]
	, is_metro_micro
	--, NetBeds, Sum_Totals
	, SUM(HospBedUtil) / COUNT(HospBedUtil) AS FIPSUtil
FROM HospBedUtils
WHERE fips_code <> '' AND (NetBeds > 0 OR HospBedUtil > 0) 
GROUP BY fips_code
	, [state]
	, is_metro_micro

/*
Step 4
query results were manually copied to an Excel sheet and saved as a .csv for future import
*/