﻿-- =============================================
-- Author:		Hardys Perez
-- Create date: 06/22/2022
-- Description:	Clean the table before executing the pipeline
-- =============================================

CREATE PROCEDURE [comm].[usp_pre_c110] 
	@RecordId int,
	@ICMRunId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	Truncate Table [comm].[c110]
	
	Update ConfigOnAzure
	Set StartTime = GetDate()
	Where RecordId = @RecordId
END
RETURN 0
GO