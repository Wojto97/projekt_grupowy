ALTER TABLE Osoba
ADD CONSTRAINT FK_Osoba_Rola
FOREIGN KEY (id_rola) REFERENCES Rola(id_rola);

ALTER TABLE Osoba
ADD CONSTRAINT FK_Osoba_Kraj
FOREIGN KEY (id_kraj) REFERENCES Kraj(id_kraj);

ALTER TABLE Osoba
ADD CONSTRAINT FK_Osoba_Platnosc
FOREIGN KEY (id_platnosc) REFERENCES Platnosc(id_platnosc);

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