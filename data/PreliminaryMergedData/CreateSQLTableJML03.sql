USE [DevSandbox]
GO

/****** Object:  Table [dbo].[JML03]    Script Date: 4/5/2025 12:20:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JML03](
	[COUNTYFIPS] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[COUNTY] [varchar](50) NULL,
	[REGION] [varchar](50) NULL,
	[ACS_TOT_POP_POV_sum] [int] NULL,
	[ACS_AVG_HH_SIZE_avg] [float] NULL,
	[ACS_PCT_DISABLE_avg] [float] NULL,
	[ACS_PCT_ENGL_NOT_ALL_avg] [float] NULL,
	[ACS_PCT_AGE_ABOVE65_avg] [float] NULL,
	[ACS_PCT_HH_INTERNET_avg] [float] NULL,
	[ACS_PCT_CHILD_1FAM_avg] [float] NULL,
	[ACS_MEDIAN_HH_INC_sum] [int] NULL,
	[ACS_PCT_HH_INC_10000_avg] [float] NULL,
	[ACS_PCT_POV_ASIAN_avg] [float] NULL,
	[ACS_PCT_POV_BLACK_avg] [float] NULL,
	[ACS_PCT_POV_HISPANIC_avg] [float] NULL,
	[ACS_PCT_POV_WHITE_avg] [float] NULL,
	[ACS_PCT_HH_FOOD_STMP_avg] [float] NULL,
	[ACS_PCT_HH_FOOD_STMP_BLW_POV_avg] [float] NULL,
	[ACS_PCT_LT_HS_avg] [float] NULL,
	[ACS_PCT_HH_ALONE_ABOVE65_avg] [float] NULL,
	[ACS_PCT_HU_COAL_avg] [float] NULL,
	[ACS_PCT_HU_MOBILE_HOME_avg] [float] NULL,
	[ACS_PCT_OWNER_HU_COST_30PCT_avg] [float] NULL,
	[ACS_PCT_RENTER_HU_COST_30PCT_avg] [float] NULL,
	[ACS_PCT_RENTER_HU_COST_50PCT_avg] [float] NULL,
	[ACS_PCT_RENTER_HU_avg] [float] NULL,
	[ACS_PCT_COMMT_60MINUP_avg] [float] NULL,
	[ACS_PCT_HU_NO_VEH_avg] [float] NULL,
	[ACS_PCT_PUBL_TRANSIT_avg] [float] NULL,
	[ACS_PCT_MEDICAID_ANY_avg] [float] NULL,
	[ACS_PCT_MEDICARE_ONLY_avg] [float] NULL,
	[ACS_PCT_PRIVATE_ANY_avg] [float] NULL,
	[ACS_PCT_PUBLIC_ONLY_avg] [float] NULL,
	[ACS_PCT_UNINSURED_avg] [float] NULL,
	[ACS_PCT_UNINSURED_BELOW64_avg] [float] NULL,
	[CEN_AREALAND_SQM_TRACT_avg] [float] NULL,
	[CEN_POPDENSITY_TRACT_avg] [float] NULL,
	[WUSTL_AVG_PM25_avg] [float] NULL,
	[POS_DIST_ED_TRACT_avg] [float] NULL,
	[POS_DIST_MEDSURG_ICU_TRACT_avg] [float] NULL,
	[POS_DIST_TRAUMA_TRACT_avg] [float] NULL,
	[POS_DIST_CLINIC_TRACT_avg] [float] NULL,
	[HOSP_FIPS_UTIL] [float] NULL,
	[IS_METRO_MICRO] [varchar](50) NULL
) ON [PRIMARY]
GO


