SELECT P.[ProductKey] AS ProductKey,
      --[ProductAlternateKey]
	  ISNULL(P.[ProductSubcategoryKey],'-1') AS ProductSubCategoryKey,
      --[WeightUnitMeasureCode]
      --[SizeUnitMeasureCode]
      P.[EnglishProductName] AS EnglishName,
	  ISNULL(SC.EnglishProductSubcategoryName,'Unranked') AS SubName, --LEFT JOINED
      --[SpanishProductName]
      --[FrenchProductName]
      --[StandardCost]
      --[FinishedGoodsFlag]
      P.[Color] AS Color,
      --[SafetyStockLevel]
      --[ReorderPoint]
      --[ListPrice]
      --[Size]
      --[SizeRange]
      --[Weight]
      --[DaysToManufacture]
      ISNULL(P.[ProductLine], 'NA') AS ProductLine
      --[DealerPrice]
      --[Class]
      --[Style]
      --[ModelName]
      --[LargePhoto]
      --[EnglishDescription]	
      --[FrenchDescription]
      --[ChineseDescription]
      --[ArabicDescription]
      --[HebrewDescription]
      --[ThaiDescription]
      --[GermanDescription]
      --[JapaneseDescription]
      --[TurkishDescription]
      --[StartDate]
      --[EndDate]
      --[Status]

  FROM [AdventureWorksDW2022].[dbo].[DimProduct] AS P LEFT JOIN [AdventureWorksDW2022].[dbo].[DimProductSubcategory] AS SC
  ON (P.ProductSubcategoryKey = SC.ProductSubcategoryKey)
  ORDER BY ProductSubcategoryKey;