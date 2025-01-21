# Analiza wariantów genetycznych za pomocą narzędzi bioinformatycznych

**Wprowadzenie**

Wykrywanie wariantów to proces identyfikacji zmian w sekwencjach DNA, który polega na porównaniu sekwencji genomu badanego organizmu z genomem referencyjnym. Zmiany te, nazywane wariantami, mogą obejmować różne formy mutacji, takie jak: insercje, delecje, zamiany pojedynczych nukleotydów oraz zmiany strukturalne, na przykład zmiany liczby kopii fragmentów DNA, transpozycje czy odwrócenie orientacji fragmentów DNA w obrębie chromosomów. Proces ten odgrywa kluczową rolę w badaniach genomowych i stanowi podstawę do:

- poszukiwania genetycznych przyczyn chorób,
- identyfikowania mutacji odpowiedzialnych za cechy fenotypowe,
- analizy różnorodności genetycznej w populacjach,
- badań ewolucyjnych.

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
- Ustalamy katalog roboczy za pomocą funkcji setwd, co ułatwia zarządzanie plikami wejściowymi i wyjściowymi. Funkcja list.files() pozwala sprawdzić dostępność plików w bieżącym katalogu.

---
# 2. Przygotowanie danych wejściowych
**Wczytanie pliku BAM**
- Plik BAM (aligned_sample1.BAM), zawierający wyrównane odczyty sekwencyjne, jest wczytywany przy pomocy funkcji BamFile().

**Wczytanie genomu referencyjnego**
- Genom referencyjny w formacie FASTA (ecoli_reference1.fasta) ładowany jest za pomocą funkcji FaFile().
---
# 3. Sortowanie i indeksowanie danych
**Sortowanie pliku BAM**
- Za pomocą funkcji sortBam() plik BAM jest sortowany według współrzędnych, co upraszcza dalsze indeksowanie i analizowanie danych.

**Indeksowanie plików**
- Pliki FASTA i BAM są indeksowane przy użyciu funkcji indexFa() oraz indexBam(), co zapewnia szybki dostęp do danych w trakcie analizy.

---
# 4. Ocena jakości danych sekwencyjnych
**Weryfikacja struktury pliku BAM**
- Strukturę metadanych pliku BAM sprawdzono za pomocą scanBamHeader().

**Analiza statystyk pliku BAM**
- Funkcja idxstatsBam() pozwoliła na uzyskanie statystyk, takich jak liczba zmapowanych (713,927) oraz niezmapowanych (506,059) odczytów, co stanowi podstawę do oceny jakości i kompletności danych.

**Pokrycie genomu**
- Funkcja coverage() oblicza pokrycie genomu, czyli liczbę odczytów przypadających na każdą pozycję w genomie. Wizualizacja z wykorzystaniem plot(coverage_data) pozwala ocenić jakość pokrycia. Obszary o wysokim pokryciu mogą sugerować artefakty lub sekwencje powtarzalne, podczas gdy niskie pokrycie może wskazywać na problemy z sekwencjonowaniem.

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
**Wykonany pipeline obejmuje:**

- Przygotowanie danych wejściowych i ich przetwarzanie (sortowanie, indeksowanie),
- Kontrolę jakości danych sekwencyjnych,
- Identyfikację i filtrację wariantów genetycznych,
- Eksport wyników do pliku wyjściowego.

Procedura ta stanowi podstawę do dalszych badań genomowych i może być wykorzystywana w analizach wariantów genetycznych w różnych dziedzinach bioinformatyki.
