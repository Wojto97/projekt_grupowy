drop table Kraj if exists;
create table Kraj (
  id_kraj INTEGER NOT NULL AUTO_INCREMENT,
  nazwa VARCHAR(100),
  PRIMARY key (id_kraj)
)

drop table Rola if exists;
create table Rola (
  id_rola INTEGER NOT NULL AUTO_INCREMENT,
  nazwa VARCHAR(100),
  PRIMARY key (id_rola)
)

drop table Osoba if exists;
create table Osoba (
  id_osoba INTEGER NOT NULL AUTO_INCREMENT,
  rola_id VARCHAR(100),
  kraj_id VARCHAR(100),
  imie VARCHAR(100),
  drugie_imie VARCHAR(100),
  nazwisko VARCHAR(100),
  pesel VARCHAR(100),
  ulica VARCHAR(100),
  miejscowosc VARCHAR(100),
  email VARCHAR(100),
  haslo VARCHAR(100),
  aktywny Boolean,
  ilosc_nieudanych_prob_logowania INTEGER,
  PRIMARY key (id_osoba)
)

drop table Przedmiot if exists;
create table Przedmiot (
  id_przedmiot INTEGER NOT NULL AUTO_INCREMENT,
  id_osoba VARCHAR(100),
  id_sala_wykladowa VARCHAR(100),
  nazwa VARCHAR(100),
  opis_zajec VARCHAR(100),
  termin_najblizszych_zajec DATETIME,
  termin_egzaminu DATETIME,
  PRIMARY key (id_przedmiot)
)

drop table Ocena if exists;
create table Ocena (
  id_osoba INTEGER NOT NULL AUTO_INCREMENT,
  id_przedmiotu VARCHAR(100),
  wartosc double,
  data_wpisania_oceny DATETIME,
  PRIMARY key (id_osoba)
)

drop table PlanZajęc if exists;
create table PlanZajęc (
  id_plan_zajec INTEGER NOT NULL AUTO_INCREMENT,
  id_sala_wykladowa VARCHAR(100),
  id_przedmiotu VARCHAR(100),
  godzina_rozpoczęcia VARCHAR(100),
  godzina_zakończenia VARCHAR(100),
  PRIMARY key (id_plan_zajec)

)

drop table SalaWykladowa if exists;
create table SalaWykladowa (
  id_sala_wykladowa INTEGER NOT NULL AUTO_INCREMENT,
  numer_sali VARCHAR(100),
  adres_sali VARCHAR(100),
  PRIMARY key (id_sala_wykladowa)
)

drop table Biblioteka if exists;
create table Biblioteka {
  id_biblioteka INTEGER NOT NULL AUTO_INCREMENT,
  id_ksiazka VARCHAR(100),
  data_wypozyczenia DATETIME,
  DATETIME_rezerwacji DATETIME,
  PRIMARY key (id_biblioteka)
}

drop table Ksiazka if exists;
create table Ksiazka {
  id_ksiazka INTEGER NOT NULL AUTO_INCREMENT,
  tytuł VARCHAR(100),
  wypozyczył Osoba,
  zarezerwował Osoba,
  po_terminie_oddania boolean,
  PRIMARY key (id_ksiazka)
}

drop table Płatnosc if exists;
create table Płatnosc {
  id_platnosc INTEGER NOT NULL AUTO_INCREMENT,
  data DATETIME,
  wartosc double ,
  zaplanowana boolean ,
  PRIMARY key (id_platnosc)
}

