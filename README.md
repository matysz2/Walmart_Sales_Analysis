📊 Walmart Sales Analysis
🎯 Cel projektu

Projekt prezentuje proces analizy sprzedaży sieci sklepów Walmart z wykorzystaniem SQL Server oraz Power BI.

Celem było:

analiza sprzedaży poszczególnych sklepów,
sprawdzenie wpływu świąt na sprzedaż,
analiza zależności pomiędzy wielkością sklepu a sprzedażą,
przygotowanie czytelnego raportu Power BI,
zastosowanie dobrych praktyk SQL i analizy danych.

Projekt został wykonany jako element portfolio Junior Data Analyst.

🛠 Wykorzystane technologie
Microsoft SQL Server (T-SQL)
Power BI
Git / GitHub
Visual Studio Code
CSV
📁 Struktura projektu
.
├── data/
│   ├── stores.csv
│   └── Walmart_Sales.csv
│
├── images/
│   ├── sprzedaż_wg_asortymentu.png
│   ├── sprzedaż_wg_ceny_paliwa.png
│   ├── sprzedaż_wg_miesiąca.png
│   ├── sprzedaż_wg_wielkości_sklepu.png
│   └── sprzedaż_wg_świąt.png
│
├── powerbi/
│   └── Walmart_Analysis.pbix
│
├── results/
│   └── Wyniki.csv
│
└── sql_scripts/
    ├── 01_explore.sql
    ├── 02_aggregation.sql
    ├── 03_analysis.sql
    ├── 04_data_labels.sql
    ├── 05_joins_and_data_quality.sql
    ├── 06_views.sql
    ├── 07_stored_procedures.sql
    ├── 08_advanced_analysis.sql
    └── 09_data_quality_checks.sql
📊 Proces analizy

Analiza została podzielona na kolejne etapy:

1. Eksploracja danych
sprawdzenie struktury danych,
liczby rekordów,
brakujących wartości,
unikalności danych.

Plik: 01_explore.sql

2. Agregacja

Obliczenie podstawowych wskaźników:

średnia sprzedaż,
suma sprzedaży,
liczba transakcji,
sprzedaż według sklepu.

Plik: 02_aggregation.sql

3. Analiza danych

Wykorzystanie instrukcji:

CASE WHEN
GROUP BY
HAVING

do klasyfikacji danych.

Plik: 03_analysis.sql

4. Łączenie danych

Połączenie tabel sprzedaży z metadanymi sklepów przy użyciu:

LEFT JOIN

oraz analiza jakości danych.

Plik: 05_joins_and_data_quality.sql

5. Widoki SQL

Przygotowanie widoków ułatwiających późniejszą analizę.

Plik: 06_views.sql

6. Procedury składowane

Automatyzacja najczęściej wykonywanych analiz.

Plik: 07_stored_procedures.sql

7. Zaawansowana analiza

Wykorzystanie funkcji okienkowych:

RANK()
DENSE_RANK()
ROW_NUMBER()

do tworzenia rankingów sklepów.

Plik: 08_advanced_analysis.sql

8. Kontrola jakości danych

Sprawdzenie:

duplikatów,
braków danych,
ujemnych wartości sprzedaży,
spójności danych.

Plik: 09_data_quality_checks.sql

📈 Dashboard Power BI

Raport Power BI zawiera między innymi:

sprzedaż według sklepu,
sprzedaż w okresach świątecznych,
sprzedaż według miesiąca,
wpływ wielkości sklepu na sprzedaż,
wpływ ceny paliwa,
analizę asortymentu.
💡 Najważniejsze wnioski
Sklepy różnią się poziomem sprzedaży — część osiąga znacznie wyższe wyniki niż pozostałe.
W okresach świątecznych sprzedaż jest przeciętnie wyższa niż poza nimi.
Większe sklepy często osiągają wyższą sprzedaż, jednak sama powierzchnia nie wyjaśnia wszystkich różnic.
Temperatura i cena paliwa mogą wpływać na sprzedaż, jednak zależność nie jest jednoznaczna.
🚀 Jak uruchomić projekt
Zaimportuj pliki z katalogu data/ do Microsoft SQL Server.
Uruchom skrypty z katalogu sql_scripts/ w kolejności od 01 do 09.
Otwórz plik Walmart_Analysis.pbix w Power BI Desktop.
Odśwież źródła danych.
Przeglądaj przygotowany dashboard.