-- 1. Podstawowe łączenie (Wzbogacenie danych o typ sklepu)
SELECT 
    S.Store, 
    S.Weekly_Sales, 
    M.Store_Type
FROM Walmart_Sales AS S
LEFT JOIN Stores_Metadata AS M ON S.Store = M.Store;

-- 2. "Data Quality Check" – Szukanie sklepów bez metadanych (tzw. sierot)
-- To zapytanie pokazuje, że potrafisz dbać o spójność bazy danych.
SELECT 
    S.Store, 
    S.Weekly_Sales
FROM Walmart_Sales AS S
LEFT JOIN Stores_Metadata AS M ON S.Store = M.Store
WHERE M.Store IS NULL;

-- 3. Kategoryzacja danych (Logika biznesowa CASE WHEN)
SELECT 
    S.Store, 
    S.Weekly_Sales,
    CASE 
        WHEN M.Store_Type = 'A' THEN 'Sklep typu A'
        ELSE 'Inny Typ lub brak danych' 
    END AS Segmentacja_Sklepu
FROM Walmart_Sales AS S
LEFT JOIN Stores_Metadata AS M ON S.Store = M.Store;