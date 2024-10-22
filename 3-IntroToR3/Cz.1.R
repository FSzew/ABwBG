---
title: "Cz.1"
author: "Franciszek Szewczak"
date: "2024-10-22"
output: html_document
---

# Zadania treningowe z R base
***Instrukcja:*** **Zapisz rozwiązania zadań z każdej części jako osobny skrypt w formacie .Rmd lub (ewentualnie) .R, np. Czesc1.Rmd, Czesc2.R. Pamiętaj, że im dokładniej opisane zadanie, tym lepiej!**

## Część 1: Podstawowe operacje matematyczne

#1. **Zadanie 1:** Oblicz pole trójkąta o podstawie 10 i wysokości 5, używając operatora mnożenia.
Pole Trójkąta-wzór- $(a*h)/2$
Przypisywanie zmiennych
```{r}
a<- 10
h<- 5
```
Definiowanie pola trójkąta
```{r}
PoleTrójkąta <-a*h/2
```
Wynik:
```{r}
print(PoleTrójkąta)
```
#2. **Zadanie 2:** Znajdź resztę z dzielenia 256 przez 7 oraz wynik dzielenia całkowitego.
```{r}
Reszta<-256%/%7
print(Reszta)
```
3. **Zadanie 3:** Oblicz wartość wyrażenia $e^{\ln(5)}$, używając funkcji `exp()` i `log()`.

4. **Zadanie 4:** Zaokrąglij liczbę 7,895 do najbliższej liczby całkowitej: w górę i w dół.
Zaokrąglenie w górę
```{r}
ZaokrąglenieGóra<-ceiling(7.895)
print(ZaokrąglenieGóra)
```
Zaokrąglenie w dół
```{r}
ZaokrąglenieDół<-floor(7.895)
print(ZaokrąglenieDół)
```
5. **Zadanie 5:** Oblicz wartość funkcji tangens dla kąta $45^\circ$ (pamiętaj o konwersji stopni na radiany).

6. **Zadanie 6:** Oblicz wartość wyrażenia $\sqrt{3^2 + 4^2}$, używając funkcji `sqrt()` i operatora potęgowania.

---


---
## Część 3: Operacje na wektorach i indeksowanie

1. **Zadanie 1:** Stwórz wektor, który będzie zwracał wszystkie wartości od 0 do 1 co 0,1.
Definiowanie wektora
```{r}
wektor4<-seq(from=0, to=1, by=0.1)
print(wektor4)

```

2. **Zadanie 2:** Dla wektora $[2, 4, 6, 8, 10]$ wybierz drugi i czwarty element.
Definiowanie wektora
```{r}
wektor5<-c(2,4,6,8,10)
drugielement<-wektor5[2]
czwartyelement<-wektor5[4]

print(drugielement)
print(czwartyelement)

```

3. **Zadanie 3:** Znajdź wszystkie elementy wektora $[5, 3, 8, 1, 9]$ większe niż 4.
efiniowanie wektora
```{r}
wektor6<-c(5,3,8,1,9)
powyżej4<-wektor6[wektor6>6]

print(powyżej4)
```
4. **Zadanie 4:** Posortuj wektor $[5, 2, 8, 3, 7]$ malejąco i podaj indeksy sortowania.

5. **Zadanie 5:** Oblicz rangi elementów wektora $[50, 20, 30, 40, 10]$.

6. **Zadanie 6:** Stwórz wektor powtarzający sekwencję $[1, 2, 3]$ trzy razy.

## Część 4: Praca z ramkami danych (data frames)

1. **Zadanie 1:** Utwórz ramkę danych zawierającą informacje o produktach: nazwa (tekst), cena (liczba), ilość (liczba całkowita).
```{r}
dane_ramka <- data.frame(
  nazwa = c("Anna", "Piotr", "Maria"),
  cena = c(28, 34, 23),
  ilosc = c("2", "3", "4")
)
```


2. **Zadanie 2:** Wyświetl kolumnę `'nazwa'` z ramki danych produktów.
```{r}
dane_ramka$nazwa
```
3. **Zadanie 3:** Dodaj nową kolumnę `'wartość'` obliczaną jako cena pomnożona przez ilość.


4. **Zadanie 4:** Usuń kolumnę `'ilość'` z ramki danych.

5. **Zadanie 5:** Wyświetl strukturę ramki danych za pomocą funkcji `str()`.

6. **Zadanie 6:** Podaj nazwy kolumn i wierszy w ramce danych.

---
## Część 5: Funkcje logiczne i warunkowe

1. **Zadanie 1:** Sprawdź, czy liczba 7 jest większa od 5 i jednocześnie mniejsza od 10.
```{r}
a<-5
b<-10
x<-7
wartosc<-(x>a)&(x<b)

print(wartosc)
```

2. **Zadanie 2:** Dla wektora $[-3, 2, 5]$ użyj funkcji `ifelse()`, aby przypisać "Dodatnia" lub "Ujemna" do każdego elementu.
```{r}
wektor7<-c(-2,2,5)
liczba<-ifelse(wektor7>0, "Dodatni", "Ujemny")
print(liczba)
```


3. **Zadanie 3:** Sprawdź, czy jakikolwiek element wektora $[FALSE, FALSE, TRUE]$ jest prawdziwy.

4. **Zadanie 4:** Znajdź indeksy liczb parzystych w wektorze $[1, 2, 3, 4, 5, 6]$.

5. **Zadanie 5:** Napisz instrukcję `if...else`, która sprawdzi, czy dana liczba jest podzielna przez 3.

6. **Zadanie 6:** Użyj operatora NOT, aby odwrócić wynik porównania $x == y$.

## Część 6: Pętle i iteracje

1. **Zadanie 1:** Napisz pętlę `for`, która wypisze liczby od 1 do 5.
```{r}
lista1<-for(i in 1:5) {
  print(i)
}
```


2. **Zadanie 2:** Użyj pętli `while`, aby obliczyć silnię liczby 5.
```{r}
n<-5
silnia <- 1
i<- 1
  while (i <=5) {
    silnia <-silnia*i
    i<-i+1
  }

print(silnia)
```


3. **Zadanie 3:** Stwórz macierz $2 \times 5$ wypełnioną kolumnami i za pomocą funkcji `apply()` oblicz sumę elementów w każdym wierszu.

4. **Zadanie 4:** Użyj funkcji `sapply()` na liście $[1\!:\!3,\; 4\!:\!6,\; 7\!:\!9]$ do obliczenia sumy elementów każdej podlisty.

5. **Zadanie 5:** Napisz pętlę `repeat`, która będzie zwiększać zmienną $x$ o 2, aż $x$ przekroczy 10.

6. **Zadanie 6:** Użyj funkcji `tapply()` do obliczenia średniej długości słów w grupach tekstów.

