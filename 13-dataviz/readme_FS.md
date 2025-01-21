Franciszek Szewczak, 203090, Bioinżynieria Zwierząt 
# Wizualizacja danych - instalacja i wykorzystanie pakietów
### Cel: analiza możliwości graficznych danych z zakresu genomiki 
### Wykorzystywane pakiety 
- ggplot2
- waffle
- maftools
- EnhancedVolcano
- pheatmap
- Rtsne
- qqman
- VennDiagram
- UpSetR
- pathview
- ape
- genoPlotR
- circlize
- karyoploteR
#### **Dołączono kod z podstawowymi funkcjami pakietów pozwalających na generację różnych wykresów i funkcji**
## Krótkie omówienie powyższych pakietów w kontekście wykorzystania w genomice 

---

### **1. ggplot2**
- **Zastosowanie**: Uniwersalny pakiet do wizualizacji danych. Bazuje na koncepcji "Grammar of Graphics". Ma wiele zastosowań w analizie danych genomowych, m.in. w wizualizacji wyników różnicowej ekspresji genów oraz analiz statystycznych.
- **Możliwości**: Tworzenie wykresów takich jak wykresy punktowe, słupkowe, liniowe, boxploty, histogramy czy wykresy gęstości, z możliwością dostosowywania estetyki i układu graficznego.
- **Przykładowy**
  ![image](https://github.com/user-attachments/assets/7cb2caf2-bf0b-4199-b3da-066cc4d4e858)
  ![image](https://github.com/user-attachments/assets/707dc8e9-4c40-47d7-b825-04dc37ffd033)
  ![image](https://github.com/user-attachments/assets/f7ae830e-3576-4569-840a-514cefd3aae5)
  ![image](https://github.com/user-attachments/assets/137beb08-ac37-4cf4-90f0-0bd15a6588f1)
  ![image](https://github.com/user-attachments/assets/f07b8739-6757-4777-9981-dceba8da198d)

---

### **2. waffle**
- **Zastosowanie**: Wizualizacja proporcji lub udziałów danych w postaci tzw. "waffle charts".
- **Możliwości**: Generowanie wysoce czytelnych graficznie wykresów mozaikowych
- **Przykład**
![image](https://github.com/user-attachments/assets/61636045-874d-41e1-8106-ecc35dc90b3d)


---

### **3. maftools**
- **Zastosowanie**: Analiza i wizualizacja danych o mutacjach genomowych zapisanych w formacie MAF. Przydatny w badaniach nowotworowych do analizy profili mutacyjnych.
- **Możliwości**: Tworzenie zaawansowanych wizualizacji, takich jak oncoplots, waterfall plots i statystyczne zestawienia mutacji w podgrupach próbek.
- ***Przykład**
![image](https://github.com/user-attachments/assets/f1a24018-a47d-415c-92c2-5c9bfafd67ca)


---

### **4. EnhancedVolcano**
- **Zastosowanie**: Tworzenie wykresów volcano plots w celu wizualizacji wyników analiz różnicowej ekspresji genów.
- **Możliwości**: Generowanie ładnych wykresów wulkanowych, z możliwością dynamicznego ustawiania progów istotności statystycznej i wielkości efektu.
- **Przykład**
![image](https://github.com/user-attachments/assets/1e6e2ee4-875f-4873-8537-afa87e4b444d)

---

### **5. pheatmap**
- **Zastosowanie**: Generowanie heatmap w celu wizualizacji danych wielowymiarowych.
- **Możliwości**: Generowanie map cieplnych z automatycznym lub manualnym grupowaniem wierszy i kolumn. Możliwość dodania dodatkowych adnotacji.
- **Przykład**
![image](https://github.com/user-attachments/assets/c1b0d3d0-6586-4442-aee1-666e347b91d5)


---

### **6. Rtsne**
- **Zastosowanie**: Redukcja wymiarowości danych za pomocą algorytmu t-SNE.
- **Możliwości**: Wizualizacja danych w zredukowanej przestrzeni wymiarów w postaci wykresów punktowych.
- **Przykład**
![image](https://github.com/user-attachments/assets/4c780e30-1e42-4b5c-84a0-be5ba4fd92a4)

---

### **7. qqman**
- **Zastosowanie**: Wizualizacja wyników analizy asocjacji genetycznych (GWAS) w postaci wykresów Manhattan i wykresów kwantylowo-kwantylowych (QQ plots).
- **Możliwości**: Generowanie czytelnych wykresów Manhattan oraz analiz QQ. Pozwala to na identyfikację istotnych loci genomowych.
- **Przykład**
![image](https://github.com/user-attachments/assets/82da0e97-c4e5-4968-ac23-aee59230a6ad)


---

### **8. VennDiagram**
- **Zastosowanie**: Wizualizacja zbiorów danych w postaci diagramów Venna
- **Możliwości**: Tworzenie diagramów Venna z możliwością dostosowywania kolorystyki, liczby zbiorów oraz opisu.
- **Przykład**
![image](https://github.com/user-attachments/assets/940ccc28-4254-4ece-b5aa-8bdde9c3dba4)

---

### **9. UpSetR**
- **Zastosowanie**: Analiza i wizualizacja przecięć zbiorów danych w bardziej zaawansowany sposób niż tradycyjne diagramy Venna.
- **Możliwości**: Generowanie wykresów UpSet, które przedstawiają relacje między zbiorami w formie tabelaryczno-graficznej, ułatwiając interpretację skomplikowanych zależności.
- **Przykład**
![image](https://github.com/user-attachments/assets/e5db01cb-ac26-4f26-84d2-bc4979d2a5b4)

---

### **10. pathview**
- **Zastosowanie**: Wizualizacja ścieżek biologicznych + wyniki analiz danych genomowych
- **Możliwości**: Tworzenie schematów ścieżek biologicznych, na które mapowane są dane ilościowe. Możliwość szczegółowej analizy aktywności genów.
- **Przykład**
![image](https://github.com/user-attachments/assets/8f8eb597-aea2-467c-a37f-f918afc19d4e)

---

### **11. ape**
- **Zastosowanie**: Analiza filogenetyczna i wizualizacja drzew filogenetycznych
- **Możliwości**: Tworzenie drzew filogenetycznych w różnych formatach- możliwość edycji i adnotacji.
- **Przykład**
  ![image](https://github.com/user-attachments/assets/06fcf3a1-5938-421f-827e-81c0bb3ced3e)

---

### **12. genoPlotR**
- **Zastosowanie**: Wizualizacja homologii genów oraz układów genów w genomach porównawczych.
- **Możliwości**: Generowanie schematów syntenii i porównawczych genomów z uwzględnieniem lokalizacji genów oraz regionów homologicznych.
- **Przykład**
- ![image](https://github.com/user-attachments/assets/e5f38007-2f48-439b-9f6f-a23577f1e3e2)

---

### **13. circlize**
- **Zastosowanie**: Wizualizacja danych w formie circular plots
- **Możliwości**: Tworzenie zaawansowanych diagramów kołowych z warstwami danych, takich jak regiony genów, mutacje czy relacje między elementami genomu.
- **Przykład**
![image](https://github.com/user-attachments/assets/65c05b03-10f7-4c80-ac3b-62aa9f1ebe0e)

---

### **14. karyoploteR**
- **Zastosowanie**: Wizualizacja danych genomowych w postaci ideogramów chromosomowych, umożliwiająca mapowanie danych genomowych na układ chromosomów.
- **Możliwości**: Generowanie ideogramów chromosomów z naniesionymi danymi, takimi jak SNP, loci genów czy wyniki analiz eksperymentalnych.
- **Przykład**
![image](https://github.com/user-attachments/assets/7fdfb74a-ffec-4a8d-9a1f-584233ae363c)

---
