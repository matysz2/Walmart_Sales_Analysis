Analiza Sprzedaży Walmart
🎯 Cel projektu
Celem analizy było zrozumienie wpływu świąt na sprzedaż w sieci sklepów Walmart oraz identyfikacja sklepów o najwyższej i najniższej wydajności w oparciu o dostarczony zbiór danych. Projekt koncentruje się na budowie pipeline'u analitycznego: od czyszczenia danych, przez ich agregację, aż po automatyzację raportowania.

🛠 Wykorzystane technologie
SQL (Microsoft SQL Server / T-SQL)

Git / GitHub (Wersjonowanie kodu)

VS Code (Edycja i dokumentacja)

📊 Wyniki analizy
W folderze results/ znajduje się plik Wyniki.csv, zawierający podsumowanie wydajności sklepów (agregacje, rankingi), będące efektem końcowym przeprowadzonych zapytań SQL.

📈 Proces analizy (Etapy pracy)
Analiza została podzielona na logiczne etapy, aby zapewnić czytelność i łatwość konserwacji kodu:

Eksploracja (01_explore.sql): Sprawdzenie struktury danych i unikalności rekordów.

Agregacja (02_aggregation.sql): Obliczenie kluczowych wskaźników (KPI).

Analiza (03_analysis.sql): Kategoryzacja danych za pomocą instrukcji CASE WHEN.

Relacje i Jakość (05_joins_and_data_quality.sql): Zastosowanie LEFT JOIN w celu połączenia metadanych i obsługa braków danych.

Automatyzacja (06_views.sql): Stworzenie widoków (Views) w celu uproszczenia dostępu do złożonych zapytań.

Interaktywność (07_stored_procedures.sql): Implementacja procedur składowanych dla dynamicznego odpytywania danych.

Zaawansowana Analityka (08_advanced_analysis.sql): Wykorzystanie funkcji okienkowych (RANK()) do tworzenia rankingów sprzedaży.

💡 Kluczowe wnioski (Insights)
Wpływ świąt: Sprzedaż w okresie świątecznym wzrosła średnio o 7,8%, co potwierdza skuteczność kampanii świątecznych.

Lider sprzedaży: Sklep nr 20 wykazuje najwyższą średnią sprzedaż (ok. 2,1 mln USD).

Wpływ temperatury: Sprzedaż jest najwyższa w okresach zimnych (<40 stopni). Sugeruje to, że czynniki sezonowe mają silniejszy wpływ na decyzje zakupowe niż sama temperatura.

🚀 Jak uruchomić projekt
Zaimportuj plik Walmart_Sales.csv do SQL Server.

Uruchom skrypty w folderze sql_scripts/ w kolejności numerycznej:

01_... do 08_...

Wyniki analizy są dostępne w tabelach lub widokach stworzonych przez skrypty. Przykładowy raport:

SQL
SELECT * FROM View_Store_Performance;