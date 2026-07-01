Etap 7: Automatyzacja interaktywna (Stored Procedures)
Cel: Stworzenie narzędzia, które zwraca wyniki dla wybranego sklepu.
*/

CREATE OR ALTER PROCEDURE Get_Store_Performance_By_ID
    @Store_ID INT -- Parametr wejściowy
AS
BEGIN
    -- Procedura filtruje dane z naszego widoku
    SELECT * FROM View_Store_Performance
    WHERE Store = @Store_ID;
END;