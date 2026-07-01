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
## 🔍 Etap 5: Relacje i Czyszczenie Danych (Data Cleaning)

W tym etapie skupiłem się na łączeniu rozproszonych zbiorów danych oraz weryfikacji ich jakości.

- **Wykorzystanie LEFT JOIN:** Zastosowałem złączenia, aby wzbogacić dane o transakcjach o informacje o typach sklepów. Wybór `LEFT JOIN` był podyktowany chęcią zachowania wszystkich rekordów sprzedaży, nawet tych, dla których brakowało metadanych.
- **Data Quality Check:** Zaimplementowałem zapytanie identyfikujące "sieroty" (transakcje bez przypisanych metadanych), co jest kluczowe w procesie utrzymania czystości bazy danych.
- **Logika Biznesowa:** Użyłem instrukcji `CASE WHEN` do stworzenia nowej kolumny segmentującej sklepy, co ułatwia analizę wydajności w podziale na typy placówek.


## Kluczowe wnioski (Insights)
- **Wpływ świąt:** Sprzedaż w okresie świątecznym wzrosła średnio o 7,8% w porównaniu do okresów bez świąt, co potwierdza pozytywny wpływ kampanii świątecznych.
- **Lider sprzedaży:** Sklep nr 20 wykazuje najwyższą średnią sprzedaż (ok. 2,1 mln USD), co czyni go kluczowym punktem w analizie operacyjnej.
- **Wpływ temperatury:** Analiza wykazała istotną zależność: sprzedaż jest najwyższa w okresach zimnych (<40 stopni) i systematycznie spada wraz ze wzrostem temperatury. Sugeruje to, że czynniki sezonowe (np. okresy świąteczne przypadające na zimę) mają silniejszy wpływ na decyzje zakupowe niż sama temperatura.


## Jak uruchomić projekt
1. Zaimportuj plik `Walmart_Sales.csv` do SQL Server.
2. Uruchom skrypty w kolejności:
   - `01_explore.sql`
   - `02_aggregation.sql`
   - `03_analysis.sql`
   - `04_data_labels.sql`