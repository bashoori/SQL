USE [HappyScoopers_DW]
GO
TRUNCATE TABLE [dbo].[Dim_Location]
GO
INSERT INTO [dbo].[Dim_Location]
           ([_Source Key]
           ,[Continent]
           ,[Region]
           ,[Subregion]
           ,[Country Code]
           ,[Country]
           ,[Country Formal Name]
           ,[Country Population]
           ,[Province Code]
           ,[Province]
           ,[Province Population]
           ,[City]
           ,[City Population]
           ,[Postal Code]
           ,[Address Line 1]
           ,[Address Line 2]
           ,[Valid From]
           ,[Valid To]
           ,[Lineage Key])
SELECT [_Source Key]
      ,[Continent]
      ,[Region]
      ,[Subregion]
      ,[Country Code]
      ,[Country]
      ,[Country Formal Name]
      ,[Country Population]
      ,[Province Code]
      ,[Province]
      ,[Province Population]
      ,[City]
      ,[City Population]
      ,[Postal Code]
      ,[Address Line 1]
      ,[Address Line 2]
      ,[Valid From]
      ,[Valid To]
      ,[Lineage Key]
  FROM [HappyScoopers_DW].[dbo].[vw_Location]

















