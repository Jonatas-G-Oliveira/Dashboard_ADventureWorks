SELECT C.[CustomerKey] AS CustomerKey,
       C.[GeographyKey] AS GeographyKey,
      --[CustomerAlternateKey]
      --[Title]
      C.[FirstName] + ' ' + [LastName]  AS FullName,
      --[MiddleName]
      --[NameStyle]
      --[BirthDate]
      --[MaritalStatus]
      --[Suffix]
	   CASE C.[Gender]  WHEN 'M' THEN 'Man' WHEN 'F' THEN 'Woman' END AS Gender,
      --[EmailAddress]
      --[YearlyIncome]
      --[TotalChildren]
      --[NumberChildrenAtHome]
      --[EnglishEducation]
      --[SpanishEducation]
	  --[FrenchEducation]
      --[EnglishOccupation]
      --[SpanishOccupation]
      --[FrenchOccupation]
      --[HouseOwnerFlag]
      --[NumberCarsOwned]
      --[AddressLine1]
      --[AddressLine2]
      --[Phone]
      --[DateFirstPurchase]
      --[CommuteDistance]
		G.[City] AS City
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS C JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS G
  ON(C.GeographyKey = G.GeographyKey)
