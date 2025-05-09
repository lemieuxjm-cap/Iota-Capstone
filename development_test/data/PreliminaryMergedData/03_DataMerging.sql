/*
MERGE STEPS
1 import SDOH_Features .csv file into SQLServer as JML03
2 import HOSP_FIPS_UTIL .csv file into SQLServer as JML04
3 merge JML04 into JML03 (matching on FIPS code) by either
4 updating the FIPSUtil and is_metro_micro fields when the FIPS match or
5 inserting HOSP_FIPS_UTIL records into JML03 when the FIPS code is missing from JML03

MERGE jml03 t
USING jml04 s on t.countyfips = s.fips_code
WHEN MATCHED THEN
	UPDATE SET t.HOSP_FIPS_UTIL = s.FIPSUtil, t.IS_METRO_MICRO = s.is_metro_micro
WHEN NOT MATCHED BY TARGET THEN
	INSERT (COUNTYFIPS, STATE, IS_METRO_MICRO, HOSP_FIPS_UTIL)
	VALUES (s.fips_code, s.state, s.is_metro_micro, s.FIPSUtil);
*/

--sanity check
select * from JML03 where HOSP_FIPS_UTIL IS NULL  --818 SDOH records will not have a Bed Utililzation Rate
select * from JML03 where COUNTY IS NULL  --5  HOSP_FIPS_UTIL records were inserted into JML03, but have no SDOH data
