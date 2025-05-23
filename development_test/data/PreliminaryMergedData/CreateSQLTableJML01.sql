USE [DevSandbox]
GO

/****** Object:  Table [dbo].[JML01]    Script Date: 4/5/2025 12:20:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JML01](
	[COUNTYFIPS] [varchar](50) NULL,
	[STATE] [varchar](50) NULL,
	[COUNTY] [varchar](50) NULL,
	[REGION] [varchar](50) NULL,
	[ACS_TOT_POP_POV] [varchar](50) NULL,
	[ACS_AVG_HH_SIZE] [varchar](50) NULL,
	[ACS_PCT_DISABLE] [varchar](50) NULL,
	[ACS_PCT_ENGL_NOT_ALL] [varchar](50) NULL,
	[ACS_PCT_AGE_ABOVE65] [varchar](50) NULL,
	[ACS_PCT_HH_INTERNET] [varchar](50) NULL,
	[ACS_PCT_CHILD_1FAM] [varchar](50) NULL,
	[ACS_MEDIAN_HH_INC] [varchar](50) NULL,
	[ACS_PCT_HH_INC_10000] [varchar](50) NULL,
	[ACS_PCT_POV_ASIAN] [varchar](50) NULL,
	[ACS_PCT_POV_BLACK] [varchar](50) NULL,
	[ACS_PCT_POV_HISPANIC] [varchar](50) NULL,
	[ACS_PCT_POV_WHITE] [varchar](50) NULL,
	[ACS_PCT_HH_FOOD_STMP] [varchar](50) NULL,
	[ACS_PCT_HH_FOOD_STMP_BLW_POV] [varchar](50) NULL,
	[ACS_PCT_LT_HS] [varchar](50) NULL,
	[ACS_PCT_HH_ALONE_ABOVE65] [varchar](50) NULL,
	[ACS_PCT_HU_COAL] [varchar](50) NULL,
	[ACS_PCT_HU_MOBILE_HOME] [varchar](50) NULL,
	[ACS_PCT_OWNER_HU_COST_30PCT] [varchar](50) NULL,
	[ACS_PCT_RENTER_HU_COST_30PCT] [varchar](50) NULL,
	[ACS_PCT_RENTER_HU_COST_50PCT] [varchar](50) NULL,
	[ACS_PCT_RENTER_HU] [varchar](50) NULL,
	[ACS_PCT_COMMT_60MINUP] [varchar](50) NULL,
	[ACS_PCT_HU_NO_VEH] [varchar](50) NULL,
	[ACS_PCT_PUBL_TRANSIT] [varchar](50) NULL,
	[ACS_PCT_MEDICAID_ANY] [varchar](50) NULL,
	[ACS_PCT_MEDICARE_ONLY] [varchar](50) NULL,
	[ACS_PCT_PRIVATE_ANY] [varchar](50) NULL,
	[ACS_PCT_PUBLIC_ONLY] [varchar](50) NULL,
	[ACS_PCT_UNINSURED] [varchar](50) NULL,
	[ACS_PCT_UNINSURED_BELOW64] [varchar](50) NULL,
	[CEN_AREALAND_SQM_TRACT] [varchar](50) NULL,
	[CEN_POPDENSITY_TRACT] [varchar](50) NULL,
	[WUSTL_AVG_PM25] [varchar](50) NULL,
	[POS_DIST_ED_TRACT] [varchar](50) NULL,
	[POS_DIST_MEDSURG_ICU_TRACT] [varchar](50) NULL,
	[POS_DIST_TRAUMA_TRACT] [varchar](50) NULL,
	[POS_DIST_CLINIC_TRACT] [varchar](50) NULL
) ON [PRIMARY]
GO


