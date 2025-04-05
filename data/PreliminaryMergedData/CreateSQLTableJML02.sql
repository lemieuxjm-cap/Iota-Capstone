USE [DevSandbox]
GO

/****** Object:  Table [dbo].[JML02]    Script Date: 4/5/2025 12:20:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JML02](
	[hospital_pk] [varchar](150) NULL,
	[collection_week] [varchar](150) NULL,
	[state] [varchar](150) NULL,
	[hospital_name] [varchar](150) NULL,
	[address] [varchar](150) NULL,
	[city] [varchar](150) NULL,
	[zip] [varchar](150) NULL,
	[hospital_subtype] [varchar](150) NULL,
	[fips_code] [varchar](150) NULL,
	[is_metro_micro] [varchar](150) NULL,
	[total_beds_7_day_avg] [varchar](150) NULL,
	[inpatient_beds_used_7_day_avg] [varchar](150) NULL,
	[inpatient_beds_used_covid_7_day_avg] [varchar](150) NULL
) ON [PRIMARY]
GO


