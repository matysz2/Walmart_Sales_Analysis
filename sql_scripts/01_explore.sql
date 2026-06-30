-- 1. Podgląd pierwszych 10 wierszy
SELECT TOP 10 * FROM Walmart_Sales;

-- 2. Sprawdzenie, ile unikalnych sklepów jest w bazie
SELECT DISTINCT Store FROM Walmart_Sales ORDER BY Store;

-- 3. Sprawdzenie zakresu dat
SELECT MIN(Date_Sales) AS Start_Data, MAX(Date_Sales) AS End_Data 
FROM Walmart_Sales;

-- 4. Sprawdzenie, czy są jakieś wartości NULL (np. w sprzedaży)
SELECT COUNT(*) AS Puste_Sprzedaze 
FROM Walmart_Sales 
WHERE Weekly_Sales IS NULL;