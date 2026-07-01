Etap: Automatyzacja (Views)
Cel: Stworzenie wirtualnej tabeli podsumowującej wydajność sklepów.
*/

CREATE VIEW View_Store_Performance AS
SELECT 
    S.Store, 
    M.Store_Type,
    AVG(S.Weekly_Sales) AS Avg_Sales,
    SUM(S.Weekly_Sales) AS Total_Sales,
    COUNT(*) AS Number_Of_Weeks
FROM Walmart_Sales S
LEFT JOIN Stores_Metadata M ON S.Store = M.Store
GROUP BY S.Store, M.Store_Type;