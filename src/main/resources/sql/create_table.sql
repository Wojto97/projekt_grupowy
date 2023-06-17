drop table if exists Kraj;
create table Kraj (
  id_kraj INT NOT NULL AUTO_INCREMENT,
  nazwa VARCHAR(255),
  PRIMARY KEY (id_kraj)
);

drop table if exists Rola;
create table Rola (
  id_rola INT NOT NULL AUTO_INCREMENT,
  nazwa VARCHAR(255),
  PRIMARY KEY (id_rola)
);

drop table if exists Osoba;
create table Osoba (
  id_osoba INT NOT NULL AUTO_INCREMENT,
  rola_id INT,
  kraj_id INT,
  platnosc_id INT,
  imie VARCHAR(255),
  drugie_imie VARCHAR(255),
  nazwisko VARCHAR(255),
  pesel VARCHAR(255),
  ulica VARCHAR(255),
  miejscowosc VARCHAR(255),
  email VARCHAR(255),
  haslo VARCHAR(255),
  aktywny BIT,
  ilosc_nieudanych_prob_logowania INT,
  PRIMARY KEY (id_osoba)
);

drop table if exists Przedmiot;
create table Przedmiot (
  id_przedmiot INT NOT NULL AUTO_INCREMENT,
  id_ocena INT,
  id_sala_wykladowa INT,
  nazwa VARCHAR(255),
  opis_zajec VARCHAR(255),
  termin_najblizszych_zajec DATETIME,
  termin_egzaminu DATETIME,
  PRIMARY KEY (id_przedmiot)
);

drop table if exists Ocena;
create table Ocena (
  id_ocena INT NOT NULL AUTO_INCREMENT,
  wartosc DECIMAL(10,2),
  data_wpisania_oceny DATETIME,
  PRIMARY KEY (id_ocena)
);

drop table if exists PlanZajec;
create table PlanZajec (
  id_plan_zajec INT NOT NULL AUTO_INCREMENT,
  id_sala_wykladowa INT,
  godzina_rozpoczęcia VARCHAR(255),
  godzina_zakonczenia VARCHAR(255),
  PRIMARY KEY (id_plan_zajec)
);

drop table if exists SalaWykladowa;
create table SalaWykladowa (
  id_sala_wykladowa INT NOT NULL AUTO_INCREMENT,
  numer_sali VARCHAR(5),
  adres_sali VARCHAR(255),
  PRIMARY KEY (id_sala_wykladowa)
);

drop table if exists Biblioteka;
create table Biblioteka (
  id_biblioteka INT NOT NULL AUTO_INCREMENT,
  id_ksiazka INT,
  data_wypozyczenia DATETIME,
  data_rezerwacji DATETIME,
  PRIMARY KEY (id_biblioteka)
);

drop table if exists Ksiazka;
create table Ksiazka (
  id_ksiazka INT NOT NULL AUTO_INCREMENT,
  tytul VARCHAR(255),
  id_wypozyczyl INT,
  id_zarezerwowal INT,
  po_terminie_oddania BIT,
  PRIMARY KEY (id_ksiazka)
);

drop table if exists Platnosc;
create table Platnosc (
  id_platnosc INT NOT NULL AUTO_INCREMENT,
  data DATETIME,
  wartosc DECIMAL(10,2),
  zaplanowana BIT,
  PRIMARY KEY (id_platnosc)
);

ALTER TABLE Osoba
ADD CONSTRAINT FK_Osoba_Rola
FOREIGN KEY (rola_id) REFERENCES Rola(id_rola);

ALTER TABLE Osoba
ADD CONSTRAINT FK_Osoba_Kraj
FOREIGN KEY (kraj_id) REFERENCES Kraj(id_kraj);

ALTER TABLE Osoba
ADD CONSTRAINT FK_Osoba_Platnosc
FOREIGN KEY (platnosc_id) REFERENCES Platnosc(id_platnosc);

ALTER TABLE Przedmiot
ADD CONSTRAINT FK_Przedmiot_Ocena
FOREIGN KEY (id_ocena) REFERENCES Ocena(id_ocena);

ALTER TABLE Przedmiot
ADD CONSTRAINT FK_Przedmiot_SalaWykladowa
FOREIGN KEY (id_sala_wykladowa) REFERENCES SalaWykladowa(id_sala_wykladowa);

ALTER TABLE Biblioteka
ADD CONSTRAINT FK_Biblioteka_Ksiazka
FOREIGN KEY (id_ksiazka) REFERENCES Ksiazka(id_ksiazka);

drop table if exists PlanZajecPrzedmiot;
create table PlanZajecPrzedmiot (
  id_plan_zajec INT NOT NULL,
  id_przedmiot INT NOT NULL,
  CONSTRAINT PK_PlanZajecPrzedmiot PRIMARY KEY (id_plan_zajec, id_przedmiot),
  CONSTRAINT FK_PlanZajec FOREIGN KEY (id_plan_zajec) REFERENCES PlanZajec(id_plan_zajec),
  CONSTRAINT FK_Przedmiot FOREIGN KEY (id_przedmiot) REFERENCES Przedmiot(id_przedmiot)
);
