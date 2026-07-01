Etap 8: Zaawansowana Analityka (Window Functions)
Cel: Wygenerowanie rankingu sprzedaży sklepów.
*/

-- Ranking sklepów od najlepiej sprzedającego do najsłabszego
SELECT 
    RANK() OVER (ORDER BY Total_Sales DESC) AS Ranking,
    Store,
    Total_Sales,
    -- Dodatkowo: wyliczamy % udziału w sprzedaży (opcjonalnie, wygląda super w raportach)
    (Total_Sales / SUM(Total_Sales) OVER ()) * 100 AS Percent_Of_Total_Sales
FROM View_Store_Performance;