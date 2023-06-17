
CREATE TABLE Kraj (
   id_kraj INTEGER
 nazwa VARCHAR(100)  
)

CREATE TABLE Rola (
  id_rola VARCHAR(100)  
  nazwa VARCHAR(100)   
)

CREATE TABLE Osoba (
 id_osoba VARCHAR(100)  
 rola_id VARCHAR(100)   
kraj_id VARCHAR(100)  
imie VARCHAR(100)  
drugie_imie VARCHAR(100)  
 nazwisko VARCHAR(100)  
pesel VARCHAR(100)  
ulica VARCHAR(100)  
miejscowosc VARCHAR(100)  
email VARCHAR(100)  
haslo VARCHAR(100)  
aktywny Boolean  
ilosc_nieudanych_prob_logowania INTEGER  
)

CREATE TABLE Przedmiot (
id_przedmiot VARCHAR(100)  

 id_osoba VARCHAR(100)  
id_sala_wykladowa VARCHAR(100)  
 nazwa VARCHAR(100)  
opis_zajec VARCHAR(100)  
 termin_najblizszych_zajec DATETIME 
 termin_egzaminu DATETIME
)

CREATE TABLE Ocena (
 id_osoba VARCHAR(100)  
id_przedmiotu VARCHAR(100)  
wartosc double  
data_wpisania_oceny DATETIME  
)

CREATE TABLE PlanZajęć (
id_plan_zajec VARCHAR(100)  
id_sala_wykladowa VARCHAR(100)  
id_przedmiotu VARCHAR(100)  
godzina_rozpoczęcia VARCHAR(100)  
godzina_zakończenia VARCHAR(100)  
)

CREATE TABLE SalaWykladowa (
id_sala_wykladowa VARCHAR(100) 
 numer_sali VARCHAR(100) 
 adres_sali VARCHAR(100) 
)

CREATE TABLE Biblioteka {
id_biblioteka VARCHAR(100)  
id_ksiazka VARCHAR(100)  
data_wypozyczenia DATETIME  
DATETIME_rezerwacji DATETIME  
}

CREATE TABLE Ksiazka {
id_ksiazka VARCHAR(100)  
tytuł VARCHAR(100)  
wypożyczył Osoba  
zarezerwował Osoba  
po_terminie_oddania boolean  
}

CREATE TABLE Płatność {
id_platnosc VARCHAR(100)  
 data DATETIME
wartosc double 
zaplanowana boolean 
}

