# **Raport z analizy GWAS (Badanie Asocjacji Całogenomowych)**
---
# Opis metody
**Badanie GWAS** (Genome-Wide Association Study) jest techniką umożliwiającą identyfikację powiązań między różnymi wariantami genotypowymi (przede wszystkim SNP – polimorfizmy pojedynczych nukleotydów) a różnymi cechami fenotypowymi, takimi jak podatność na choroby, cechy fizyczne, a także reakcje organizmu na leczenie. GWAS znajduje zastosowanie w genomice roślinnej, medycynie oraz w analizach różnorodności genetycznej.

Zastosowania GWAS obejmują:

- Zrozumienie genetycznych podstaw różnych chorób i cech fenotypowych,
- Identyfikowanie genów związanych z określonymi cechami,
- Odkrywanie biomarkerów przydatnych w diagnostyce lub doborze terapii.
---
# **1. Instalacja i załadowanie wymaganych pakietów**

Na początku załadowano odpowiednie pakiety do analizy danych genotypowych, w tym:

- rrBLUP – do badania zależności między genotypami a fenotypami,
- BGLR – dla zaawansowanych analiz genotypów,
- SNPRelate – do analizy danych SNP,
- dplyr – do manipulacji danymi,
- qqman – do wizualizacji wyników analizy GWAS,
- poolr – do obliczeń statystycznych na danych genotypowych.
---
# **2. Wczytanie danych genotypowych i fenotypowych**

-Dane zostały zaimportowane z plików .ped, .fam oraz .map, które zawierały informacje o genotypach, próbkach i mapowaniu markerów SNP. Następnie sprawdzono poprawność danych, aby upewnić się o ich spójności.
---
# **3. Przekodowanie wartości markerów**

Wartości markerów zostały przekodowane w następujący sposób:

- Wartość 2 została uznana za brak danych (NA),
- Wartość 0 oznaczała homozygotę dla allelu głównego (0),
- Wartość 1 to heterozygota (1),
- Wartość 3 przypisano do homozygoty dla allelu mniejszościowego (2).
---
# **4. Przekonwertowanie danych do macierzy**

- Dane genotypowe zostały przekształcone w macierz, co uprościło dalszą analizę. Następnie dokonano transpozycji macierzy, aby uporządkować dane do analizy. Ostateczna wielkość macierzy to 413 osobników i 36901 markerów SNP.
---
# **5. Wczytanie danych fenotypowych**

Załadowano dane fenotypowe, które zawierały cechy przypisane do próbek, i powiązano je z odpowiednimi danymi genotypowymi. Identyfikatory próbek zostały przypisane do odpowiadających im wierszy w macierzy genotypowej.

---
# **6. Kontrola jakości (QC) danych markerów**

- Przeprowadzono kontrolę jakości markerów SNP. Wartości brakujących danych (NA) zostały zastąpione średnią dla każdego markera. Po filtracji markerów (MAP1) usunięto te, które miały niski poziom zmienności genetycznej (MAF < 5%). Po filtracji liczba markerów SNP zmniejszyła się z 36901 do 36542.

---
# **7. Analiza PCA**

- Wykonano analizę głównych składowych (PCA), aby ocenić różnorodność genotypową próbek. Wizualizacja wyników PCA wskazała na istnienie trzech grup próbek, które różniły się między sobą, ale były zbliżone pod względem genotypowym.
---

# **8. Przygotowanie danych do analizy GWAS**

- Dane genotypowe i fenotypowe zostały przygotowane do analizy GWAS. Genotypy zostały zorganizowane w tabeli zawierającej informacje o markerach SNP, a dane fenotypowe przypisano do odpowiednich próbek.
---
# **9. Analiza GWAS**

- Przeprowadzono badanie GWAS w celu zidentyfikowania markerów SNP, które wykazują powiązanie z cechami fenotypowymi. Wyniki analizy ujawniły SNP, które miały statystycznie istotne korelacje z cechami fenotypowymi.
---
# **10. Identyfikacja istotnych markerów SNP**

- Po przeprowadzeniu analizy GWAS zidentyfikowano markery SNP, które wykazały istotne powiązania z cechami fenotypowymi. Na podstawie wartości p (y < 1e-04) wybrano 6 markerów SNP, które były zlokalizowane na chromosomie 1.
---
# **11. Wykres Manhattan**

- Na zakończenie stworzono wykres Manhattan, który przedstawia rozmieszczenie markerów SNP na chromosomach, umożliwiając identyfikację obszarów genomu wykazujących silne powiązanie z badanymi cechami.
---
---
# Podsumowanie
**W przeprowadzonym badaniu GWAS zidentyfikowano markery genetyczne związane z cechami fenotypowymi. Raport obejmuje następujące etapy analizy:**

- Wczytanie i wstępna obróbka danych genotypowych oraz fenotypowych,
- Kontrola jakości markerów SNP,
- Analiza PCA w celu oceny różnorodności genotypowej,
- Przygotowanie danych do analizy GWAS,
- Przeprowadzenie analizy GWAS,
- Identyfikacja istotnych markerów SNP,
- Wizualizacja wyników za pomocą wykresu Manhattan.
