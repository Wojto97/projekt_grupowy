INSERT INTO Kraj (nazwa) VALUES ('Polska'), ('Niemcy'), ('Stany Zjednoczone'), ('Francja'), ('Kanada');

INSERT INTO Rola (nazwa) VALUES ('Student'), ('Prowadzący'), ('Administrator');

INSERT INTO Platnosc (data, wartosc, zaplanowana) VALUES ('2023-01-02', 500.5, 1), ('2023-05-01', 535, 1), ('2023-10-02', 520.6, 0);

INSERT INTO Osoba (id_rola, id_kraj, id_platnosc, imie, drugie_imie, nazwisko, pesel, ulica, miejscowosc, email, haslo, aktywny, ilosc_nieudanych_prob_logowania) 
VALUES
  ( 
    (SELECT id_rola FROM Rola WHERE nazwa = 'Student'),
    (SELECT id_kraj FROM Kraj WHERE nazwa = 'Niemcy'),
	(SELECT id_platnosc FROM Platnosc WHERE data = '2023-01-02'),
	'Paweł',
	'Mariusz',
	'Nowak',
	'12012390123',
	'Wejherowska',
	'Wrocław',
	'p.nowak@gmail.com',
	'$2a$12$6Yga9m6vjSx668ZJ3wlFW.Mlq/EzTrhpAmRrHwBQLdBwkBKwebYca',
	1,
	0
  ),
  ( 
    (SELECT id_rola FROM Rola WHERE nazwa = 'Prowadzący'),
    (SELECT id_kraj FROM Kraj WHERE nazwa = 'Francja'),
	(SELECT id_platnosc FROM Platnosc WHERE data = '2023-05-01'),
	'Artur',
	'Mariusz',
	'Zieliński',
	'12012393043',
	'Poznańska',
	'Poznań',
	'a.zielinski@gmail.com',
	'$2a$12$6Yga9m6vjSx668ZJ3wlFW.Mlq/EzTrhpAmRrHwBQL129kBKwebYca',
	1,
	1
  ),
  ( 
    (SELECT id_rola FROM Rola WHERE nazwa = 'Administrator'),
    (SELECT id_kraj FROM Kraj WHERE nazwa = 'Polska'),
	(SELECT id_platnosc FROM Platnosc WHERE data = '2023-10-02'),
	'Jakub',
	'Patryk',
	'Lewandowski',
	'12012090127',
	'Jedności Narodowej',
	'Wrocław',
	'j.lewandowski@gmail.com',
	'$2a$12$6Yga9m6vjSx668ZJ3wlFW.Mlq/EzTrhpAmRrHwsdfodBwkBKwebYca',
	1,
	2
  );

  INSERT INTO Ocena (wartosc, data_wpisania_oceny) VALUES (4.5, '2023-01-02'), (5.0, '2023-02-03'), (3.5, '2023-02-28');

  INSERT INTO SalaWykladowa (numer_sali, adres_sali) 
	VALUES ('1.07', 'Marcina Lutra 4 - Piętro 1'), 
	('3.02', 'Marcina Lutra 4 - Piętro 3'), 
	('2.15', 'Marcina Lutra 4 - Piętro 2')
  ;

  INSERT INTO PlanZajec (godzina_rozpoczecia, godzina_zakonczenia) 
	VALUES ('10:00:00', '11:30:00'), 
	('08:00:00', '11:30:00'), 
	('13:40:00', '15:10:00')
  ;

  INSERT INTO Ksiazka (tytul, id_wypozyczyl, id_zarezerwowal, po_terminie_oddania) 
	VALUES 
		(
			'Smak. Życie i jedzenie', 
			(SELECT id_osoba FROM Osoba WHERE nazwisko = 'Nowak' AND imie = 'Paweł'),
			(SELECT id_osoba FROM Osoba WHERE nazwisko = 'Zieliński' AND imie = 'Artur'),
			1
		), 
		(
			'365. Angielski na każdy dzień', 
			(SELECT id_osoba FROM Osoba WHERE nazwisko = 'Lewandowski' AND imie = 'Jakub'),
			(SELECT id_osoba FROM Osoba WHERE nazwisko = 'Nowak' AND imie = 'Paweł'),
			0
		),
		(
			'Python od podstaw', 
			(SELECT id_osoba FROM Osoba WHERE nazwisko = 'Zieliński' AND imie = 'Artur'),
			(SELECT id_osoba FROM Osoba WHERE nazwisko = 'Nowak' AND imie = 'Paweł'),
			0
		)
  ;

  INSERT INTO Biblioteka (id_ksiazka, data_wypozyczenia, data_rezerwacji) 
	VALUES 
		(
			(SELECT id_ksiazka FROM Ksiazka WHERE tytul = '365. Angielski na każdy dzień'),
			'2022-01-23',
			'2023-03-25'
		), 
		(
			(SELECT id_ksiazka FROM Ksiazka WHERE tytul = 'Python od podstaw'),
			'2023-11-04',
			'2023-12-01'
		),
		(
			(SELECT id_ksiazka FROM Ksiazka WHERE tytul = 'Smak. Życie i jedzenie'),
			'2023-05-15',
			'2023-08-01'
		)
  ;