# Analiza wariantów genetycznych za pomocą narzędzi bioinformatycznych

**Wprowadzenie**

Wykrywanie wariantów genetycznych (variant calling) to proces polegający na identyfikacji zmian w sekwencji DNA przez porównanie sekwencji badanego organizmu z genomem referencyjnym. Zmiany te, określane jako warianty, mogą obejmować różne modyfikacje, takie jak zamiany pojedynczych nukleotydów (SNP), insercje, delecje, a także zmiany strukturalne (np. zmiany liczby kopii fragmentów DNA, odwrócenie orientacji fragmentów DNA). Warianty te odgrywają kluczową rolę w wielu obszarach, w tym:
- Badaniach nad genetycznym podłożem chorób,
- Identyfikacji mutacji wpływających na cechy fenotypowe,
- Analizie genetycznej różnorodności populacji,
- Badaniach ewolucyjnych.

---
# 1. Przygotowanie narzędzi i środowiska pracy
Instalacja i wczytanie pakietów
Do przeprowadzenia analizy wariantów wykorzystano pakiety z ekosystemu Bioconductor:

- `VariantTools` – do analizy wariantów genetycznych,
- `Rsamtools` – do pracy z plikami BAM i FASTA,
- `GenomicRanges` – do operacji na zakresach genomowych,
- `GenomicFeatures` – do zarządzania cechami genomu,
- `VariantAnnotation` – do adnotacji wariantów,
- `BiocParallel` – do optymalizacji obliczeń poprzez równoległość.

**Konfiguracja środowiska roboczego**
- Aby ułatwić zarządzanie plikami, ustawiono katalog roboczy za pomocą funkcji setwd(). Dodatkowo, w celu sprawdzenia dostępnych plików w katalogu, użyto funkcji list.files().
---
# 2. Przygotowanie danych wejściowych
**Wczytanie pliku BAM**
- Sekwencje DNA zapisane w pliku BAM (aligned_sample1.BAM), zawierającym wyrównane odczyty względem genomu referencyjnego, zostały załadowane przy pomocy funkcji BamFile().

**Wczytanie genomu referencyjnego**
- Referencyjny genom (ecoli_reference1.fasta) załadowano funkcją FaFile(), umożliwiając odwoływanie się do sekwencji referencyjnych podczas analizy.
---
# 3. Sortowanie i indeksowanie danych
**Sortowanie pliku BAM**
- Plik BAM został posortowany względem współrzędnych chromosomalnych przy użyciu funkcji sortBam(), co ułatwia dalszą analizę i indeksowanie.

**Indeksowanie plików**
- Indeksowanie plików FASTA (za pomocą indexFa()) i BAM (za pomocą indexBam()) zapewnia szybki dostęp do danych, co znacząco przyspiesza proces analizy wariantów.
---
# 4. Ocena jakości danych sekwencyjnych
**Weryfikacja struktury pliku BAM**
- Strukturę metadanych pliku BAM sprawdzono za pomocą scanBamHeader().

**Analiza statystyk pliku BAM**
- Funkcja idxstatsBam() pozwoliła na uzyskanie statystyk, takich jak liczba zmapowanych (713,927) oraz niezmapowanych (506,059) odczytów, co stanowi podstawę do oceny jakości i kompletności danych.

**Pokrycie genomu**
- Funkcja coverage() obliczyła liczbę odczytów przypadających na każdą pozycję w genomie. Dzięki wizualizacji wyników za pomocą funkcji plot() możliwe było zidentyfikowanie obszarów o niskim i wysokim pokryciu, co pozwala na wykrycie potencjalnych artefaktów lub problemów związanych z sekwencjonowaniem.
---
# 5. Wykrywanie wariantów
**Generowanie danych pileup**
- Za pomocą funkcji pileup() wygenerowano dane dotyczące liczby odczytów dla każdej pozycji w genomie, uwzględniając minimalną jakość baz oraz ignorując orientację nici DNA.

**Przekształcenie danych do analizy**
- Wyniki z funkcji pileup() zostały przekształcone do ramki danych, a dodatkowe informacje o nazwach sekwencji i odczytach referencyjnych zostały dodane. Przetwarzanie danych ułatwiono dzięki użyciu pakietu dplyr.

**Identyfikacja potencjalnych wariantów**
- Na podstawie liczby odczytów oraz proporcji odczytów alternatywnych (≥ 20%), zidentyfikowano potencjalne warianty, eliminując artefakty techniczne.
---
# 6. Filtracja i eksport wyników
**Kryteria filtracji**
Przefiltrowano warianty, uwzględniając minimalne kryteria:

- Liczba odczytów dla pozycji ≥ 10,
- Proporcja odczytów alternatywnych ≥ 20%.
**Eksport wyników**
Wyselekcjonowane warianty zapisano w pliku CSV, umożliwiając ich dalszą analizę w innych narzędziach bioinformatycznych.
---
# Podsumowanie
Wykonany pipeline obejmuje:

- Przygotowanie danych wejściowych i ich przetwarzanie (sortowanie, indeksowanie),
- Kontrolę jakości danych sekwencyjnych,
- Identyfikację i filtrację wariantów genetycznych,
- Eksport wyników do pliku wyjściowego.

Procedura ta stanowi podstawę do dalszych badań genomowych i może być wykorzystywana w analizach wariantów genetycznych w różnych dziedzinach bioinformatyki.
