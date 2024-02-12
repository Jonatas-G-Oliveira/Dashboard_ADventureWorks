SELECT [ProductKey] AS ProductKey,
       [OrderDateKey] AS OrderDateKey,
      --[DueDateKey]
      --[ShipDateKey]
      [CustomerKey]	AS CustomerKey,
      --[PromotionKey]
      --[CurrencyKey]
      --[SalesTerritoryKey]
      --[SalesOrderNumber]
      --[SalesOrderLineNumber]
      --[RevisionNumber]
      --[OrderQuantity] AS OrderQuantity,
      --[UnitPrice] as UnityPrice,
      --[ExtendedAmount]
      --[UnitPriceDiscountPct]
      --[DiscountAmount]
      --[ProductStandardCost]
      --[TotalProductCost]
      [SalesAmount]	AS Sales
      --[TaxAmt]
      --[Freight]
      --[CarrierTrackingNumber]
      --[CustomerPONumber]
      --[OrderDate]
      --[DueDate]
      --[ShipDate]
  FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
  WHERE LEFT(OrderDateKey,4) > 2012