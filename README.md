# Analiza Sprzedaży Walmart

## Cel projektu
Celem analizy było zrozumienie wpływu świąt na sprzedaż w sieci sklepów Walmart oraz identyfikacja sklepów o najwyższej i najniższej wydajności w oparciu o dostarczony zbiór danych.

## Wykorzystane technologie
- SQL (Microsoft SQL Server)
- Git / GitHub (Wersjonowanie projektu)
- VS Code (Edycja i dokumentacja)

## Źródło danych
Dane pochodzą z publicznego zbioru "Walmart Sales Dataset" (Kaggle).

## Proces analizy
1. **Eksploracja**: Sprawdzenie struktury danych i unikalności rekordów.
2. **Agregacja**: Obliczenie kluczowych wskaźników (KPI) – suma sprzedaży, średnia temperatura.
3. **Analiza**: Kategoryzacja danych za pomocą instrukcji warunkowych `CASE WHEN`.
4. **Etykietowanie**: Tworzenie czytelnych nazw dla flag świątecznych.

## Kluczowe wnioski (Insights)


## Jak uruchomić projekt
1. Zaimportuj plik `Walmart_Sales.csv` do SQL Server.
2. Uruchom skrypty w kolejności:
   - `01_explore.sql`
   - `02_aggregation.sql`
   - `03_analysis.sql`
   - `04_data_labels.sql`