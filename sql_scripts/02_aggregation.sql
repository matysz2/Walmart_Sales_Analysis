-- 1. Całkowita sprzedaż na każdy sklep
SELECT 
    Store, 
    SUM(CAST(Weekly_Sales AS FLOAT)) AS Calkowita_Sprzedaz
FROM Walmart_Sales
GROUP BY Store
ORDER BY Calkowita_Sprzedaz DESC;

-- 2. Średnia temperatura i sprzedaż dla każdego sklepu
SELECT 
    Store, 
    AVG(CAST(Temperature AS FLOAT)) AS Srednia_Temp,
    AVG(CAST(Weekly_Sales AS FLOAT)) AS Srednia_Sprzedaz
FROM Walmart_Sales
GROUP BY Store;