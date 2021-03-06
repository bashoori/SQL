USE [HappyScoopers_DW]
GO

TRUNCATE TABLE [Staging_Sales]
GO

SELECT * FROM [Staging_Sales]
GO

INSERT INTO [Staging_Sales]
  (         
    [_SourceOrderDateKey],
	[_SourceDeliveryDateKey],
    [_SourceOrder],
	[_SourceOrderLine],
	[_SourceCustomerKey],
	[_SourceEmployeeKey],
	[_SourceProductKey],
	[_SourcePaymentTypeKey],
	[_SourceDeliveryCountryKey],
	[_SourceDeliveryProvinceKey],
	[_SourceDeliveryCityKey],
	[_SourceDeliveryAddressKey],
	[_SourceDeliveryLocationKey],
	[_SourcePromotionKey],
	[Description],
	[Package],
	[Quantity],
	[Unit Price],
	[VAT Rate],
	[Total Excluding VAT],
	[VAT Amount],
	[Total Including VAT],
	[ModifiedDate]
    )
	EXEC [HappyScoopers_Demo].[dbo].[Load_StagingSales] @LastLoadDate = '01-01-2018', @NewLoadDate = '06-06-2019'
GO

SELECT * FROM [Staging_Sales]

