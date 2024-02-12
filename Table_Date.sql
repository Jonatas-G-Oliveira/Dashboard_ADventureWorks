SELECT [DateKey] AS DateKey,
      [FullDateAlternateKey] AS FullDate,
     --[DayNumberOfWeek]
     --[EnglishDayNameOfWeek]
     --[SpanishDayNameOfWeek]
     --[FrenchDayNameOfWeek]
     --[DayNumberOfMonth],
     --[DayNumberOfYear]
     --[WeekNumberOfYear]
     LEFT([EnglishMonthName],3) AS Month,
      --[SpanishMonthName]
      --[FrenchMonthName]
	 [MonthNumberOfYear] AS MonthNumber,
      --[CalendarQuarter]
	   [CalendarYear] AS Year
      --[CalendarSemester]
      --[FiscalQuarter]
      --[FiscalYear]
      --[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE LEFT(FullDateAlternateKey,4) > 2012 AND LEFT(FullDateAlternateKey,4) <= 2014