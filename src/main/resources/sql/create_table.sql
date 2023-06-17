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
  id_osoba INT,
  id_sala_wykladowa INT,
  nazwa VARCHAR(255),
  opis_zajec VARCHAR(255),
  termin_najblizszych_zajec DATETIME,
  termin_egzaminu DATETIME,
  PRIMARY KEY (id_przedmiot)
);

drop table if exists Ocena;
create table Ocena (
  id_osoba INT NOT NULL AUTO_INCREMENT,
  id_przedmiotu INT,
  wartosc DECIMAL(10,2),
  data_wpisania_oceny DATETIME,
  PRIMARY KEY (id_osoba)
);

drop table if exists PlanZajec;
create table PlanZajec (
  id_plan_zajec INT NOT NULL AUTO_INCREMENT,
  id_sala_wykladowa INT,
  id_przedmiotu INT,
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
  id_ksiazka VARCHAR(255),
  data_wypozyczenia DATETIME,
  data_rezerwacji DATETIME,
  PRIMARY KEY (id_biblioteka)
);

drop table if exists Ksiazka;
create table Ksiazka (
  id_ksiazka INT NOT NULL AUTO_INCREMENT,
  tytuł VARCHAR(255),
  id_wypozyczył INT,
  id_zarezerwował INT,
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

