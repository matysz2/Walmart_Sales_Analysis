-- Wybór unikalnych wartości dla flag świątecznych z konwersją na czytelne etykiety
-- Używamy CASE WHEN, aby zmienić wartości numeryczne 0/1 na opisy tekstowe
-- Używamy CAST, ponieważ dane źródłowe zostały zaimportowane jako tekst (VARCHAR)

SELECT DISTINCT 
    Holiday_Flag,
    CASE 
        WHEN CAST(Holiday_Flag AS FLOAT) = 1 THEN 'Święto'
        ELSE 'Dzień Zwykły'
    END AS Typ_Dnia
FROM Walmart_Sales;
