-- 1. Analiza sprzedaży z podziałem na "typy dni"
SELECT 
    Store,
    CASE 
        WHEN CAST(Weekly_Sales AS FLOAT) > 1500000 THEN 'Wysoka Sprzedaż'
        WHEN CAST(Weekly_Sales AS FLOAT) > 1000000 THEN 'Średnia Sprzedaż'
        ELSE 'Niska Sprzedaż'
    END AS Poziom_Sprzedazy,
    COUNT(*) AS Liczba_Tygodni
FROM Walmart_Sales
GROUP BY Store, 
         CASE 
            WHEN CAST(Weekly_Sales AS FLOAT) > 1500000 THEN 'Wysoka Sprzedaż'
            WHEN CAST(Weekly_Sales AS FLOAT) > 1000000 THEN 'Średnia Sprzedaż'
            ELSE 'Niska Sprzedaż'
         END;

-- 2. Sklepy z wyjątkowo wysoką średnią sprzedażą (> 1.2 mln) - użycie HAVING
SELECT 
    Store, 
    AVG(CAST(Weekly_Sales AS FLOAT)) AS Srednia_Sprzedaz
FROM Walmart_Sales
GROUP BY Store
HAVING AVG(CAST(Weekly_Sales AS FLOAT)) > 1200000
ORDER BY Srednia_Sprzedaz DESC;