Etap 9: Kontrola jakości danych (Data Quality Checks)
Cel: Wykrycie anomalii, błędów logicznych i brakujących wartości.
*/

-- 1. Sprawdzenie duplikatów (czy dla jednego sklepu w tym samym tygodniu mamy dwie rekordy?)
SELECT Store, Date, COUNT(*) as Count_Occurrences
FROM Walmart_Sales
GROUP BY Store, Date
HAVING COUNT(*) > 1;

-- 2. Sprawdzenie ujemnych wartości sprzedaży (błąd logiczny)
SELECT * FROM Walmart_Sales 
WHERE Weekly_Sales < 0;

-- 3. Sprawdzenie brakujących kluczowych danych (NULLs)
SELECT * FROM Walmart_Sales 
WHERE Weekly_Sales IS NULL 
   OR Date IS NULL 
   OR Store IS NULL;

-- 4. Walidacja flagi świątecznej (Holiday_Flag powinna być tylko 0 lub 1)
SELECT DISTINCT Holiday_Flag 
FROM Walmart_Sales 
WHERE Holiday_Flag NOT IN (0, 1);