------------------------------
-- CREATE AREA
------------------------------
INSERT INTO dbo.t_area(description, state) VALUES ('informatica', '1');
INSERT INTO dbo.t_area(description, state) VALUES ('literatura', '1');
------------------------------
-- CREATE SUB_AREA
------------------------------
INSERT INTO dbo.t_sub_area(description, idArea, state) VALUES ('desarrollo de software', 1, '1');
INSERT INTO dbo.t_sub_area(description, idArea, state) VALUES ('bases de datos', 1, '1');
INSERT INTO dbo.t_sub_area(description, idArea, state) VALUES ('seguridad informatica', 1, '1');
INSERT INTO dbo.t_sub_area(description, idArea, state) VALUES ('auditoria informatica', 1, '1');
INSERT INTO dbo.t_sub_area(description, idArea, state) VALUES ('red y comunicaciones', 1, '1');
INSERT INTO dbo.t_sub_area(description, idArea, state) VALUES ('comedia', 2, '1');
INSERT INTO dbo.t_sub_area(description, idArea, state) VALUES ('drama', 2, '1');
INSERT INTO dbo.t_sub_area(description, idArea, state) VALUES ('cuento', 2, '1');
INSERT INTO dbo.t_sub_area(description, idArea, state) VALUES ('novela', 2, '1');
------------------------------
-- CREATE LIBRARY
------------------------------
INSERT INTO dbo.t_library(name, description, address, state)
VALUES ('biblioteca central de la unsch', 'biblioteca central de la unsch', 'campus de la unsch', '1');
INSERT INTO dbo.t_library(name, description, address, state)
VALUES ('biblioteca especializado de la FIMGC', 'biblioteca especializado de la fimgc', 'campus de la unsch', '1');

------------------------------
-- CREATE EDITORIAL
------------------------------
INSERT INTO dbo.t_editorial(name, state) VALUES ('Editorial Mirahadas', '1');
INSERT INTO dbo.t_editorial(name, state) VALUES ('Editorial Sexto Piso', '1');
INSERT INTO dbo.t_editorial(name, state) VALUES ('Editorial Alfaomega', '1');
INSERT INTO dbo.t_editorial(name, state) VALUES ('Editorial Ra-Ma', '1');
INSERT INTO dbo.t_editorial(name, state) VALUES ('MC GRAW HILL', '1');

------------------------------
-- CREATE ZONE
------------------------------
INSERT INTO dbo.t_zone(description, idLibrary, state) VALUES ('sala principal', 2, '1');
INSERT INTO dbo.t_zone(description, idLibrary, state) VALUES ('circulacion primer piso', 1, '1');
INSERT INTO dbo.t_zone(description, idLibrary, state) VALUES ('circulacion segundo piso', 1, '1');
INSERT INTO dbo.t_zone(description, idLibrary, state) VALUES ('sotano', 1, '1');

------------------------------
-- CREATE SPECIMEN STATE
------------------------------
INSERT INTO dbo.t_specimen_state(description, state) VALUES ('disponible', '1');
INSERT INTO dbo.t_specimen_state(description, state) VALUES ('prestamo', '1');
INSERT INTO dbo.t_specimen_state(description, state) VALUES ('mantenimiento', '1');

------------------------------
-- CREATE AUTHOR
------------------------------
INSERT INTO dbo.t_author(name, lastName, state) VALUES ('Octavio Irineo', 'Paz Lozano', '1');
INSERT INTO dbo.t_author(name, lastName, state) VALUES ('Gabriel José de la Concordia', 'García Márquez', '1');
INSERT INTO dbo.t_author(name, lastName, state) VALUES ('César Abraham', 'Vallejo Mendoza', '1');
INSERT INTO dbo.t_author(name, lastName, state) VALUES ('Mario Gerardo', 'Piattini Velthuis', '1');
INSERT INTO dbo.t_author(name, lastName, state) VALUES ('Mercedes', 'Marqués', '1');
INSERT INTO dbo.t_author(name, lastName, state) VALUES ('Cesar', ' Seoane Ruano', '1');
INSERT INTO dbo.t_author(name, lastName, state) VALUES ('Roxana', 'Silvia Giandini', '1');
INSERT INTO dbo.t_author(name, lastName, state) VALUES ('Gabriela', 'Pérez', '1');

------------------------------
-- CREATE BOOK
------------------------------
INSERT INTO dbo.t_book(isbn, title, subTitle, description, numberPage, yearPublication, idEditorial, idSubArea, state)
VALUES ('0-7645-2641-3', 'diseño de bases de datos relacional', 'diseño de bases de datos relacional', 'bases de datos', '342', '2015', 4, 2, '1');
INSERT INTO dbo.t_book(isbn, title, subTitle, description, numberPage, yearPublication, idEditorial, idSubArea, state)
VALUES ('976-84-7897-6', 'auditoria de tecnologia y sistemas de informacion', 'auditoria informatica', 'auditoria de tecnologia', '438', '2015', 4, 4, '1');
INSERT INTO dbo.t_book(isbn, title, subTitle, description, numberPage, yearPublication, idEditorial, idSubArea, state)
VALUES ('976-84-7897-7', 'paco yunque', 'paco yunque', 'paco yunque', '10', '2010', 4, 8, '1');
INSERT INTO dbo.t_book(isbn, title, subTitle, description, numberPage, yearPublication, idEditorial, idSubArea, state)
VALUES ('976-84-7897-5', 'el tungsteno', 'el tungsteno', 'el tungsteno', '230', '1931', 4, 9, '1');
INSERT INTO dbo.t_book(isbn, title, subTitle, description, numberPage, yearPublication, idEditorial, idSubArea, state)
VALUES ('976-84-7897-3', 'cien años de soledad', 'cien años de soledad', 'cien años de soledad', '280', '1981', 3, 9, '1');
INSERT INTO dbo.t_book(isbn, title, subTitle, description, numberPage, yearPublication, idEditorial, idSubArea, state)
VALUES ('978-84-693-0146-3', 'bases de datos', 'bases de datos', 'bases de datos', '342', '1981', 3, 2, '1');
INSERT INTO dbo.t_book(isbn, title, subTitle, description, numberPage, yearPublication, idEditorial, idSubArea, state)
VALUES ('978-84-481-7137-7', 'SEGURIDAD INFORMATICA.GRADO MEDIO', 'Seguridad informatica', 'Seguridad informatica', '240', '2010', 5, 3, '1');
INSERT INTO dbo.t_book(isbn, title, subTitle, description, numberPage, yearPublication, idEditorial, idSubArea, state)
VALUES ('978-84-481-7137-8', 'Desarrollo de software dirigido por modelos: Conceptos teóricos y su aplicación práctica', 'desarollo de software', 'desarollo de software', '170', '2010', 5, 1, '1');

------------------------------
-- CREATE BOOK AUTHOR
------------------------------
INSERT INTO dbo.t_book_author(idBook, idAuthor, state) VALUES (1, 4, '1');
INSERT INTO dbo.t_book_author(idBook, idAuthor, state) VALUES (2, 4, '1');
INSERT INTO dbo.t_book_author(idBook, idAuthor, state) VALUES (3, 3, '1');
INSERT INTO dbo.t_book_author(idBook, idAuthor, state) VALUES (4, 3, '1');
INSERT INTO dbo.t_book_author(idBook, idAuthor, state) VALUES (5, 2, '1');
INSERT INTO dbo.t_book_author(idBook, idAuthor, state) VALUES (6, 5, '1');
INSERT INTO dbo.t_book_author(idBook, idAuthor, state) VALUES (7, 6, '1');
INSERT INTO dbo.t_book_author(idBook, idAuthor, state) VALUES (7, 4, '1');
INSERT INTO dbo.t_book_author(idBook, idAuthor, state) VALUES (8, 7, '1');
INSERT INTO dbo.t_book_author(idBook, idAuthor, state) VALUES (8, 8, '1');

------------------------------
-- CREATE BOOK AUTHOR
------------------------------
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00342', 5, '2023-02-03', 1, 1, 1, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00343', 2, '2023-02-03', 1, 1,2 , '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00344', 3, '2023-02-03', 1, 1, 3, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00345', 4, '2023-02-03', 2, 1, 1, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00346', 5, '2023-02-03', 2, 1, 3, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00347', 2, '2023-02-03', 2, 1, 4, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00348', 1, '2023-02-03', 3, 1, 1, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00349', 2, '2023-02-03', 3, 1, 2, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00350', 1, '2023-02-03', 3, 1, 3, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('LIT-00351', 3, '2023-02-03', 4, 1, 1, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('LIT-00352', 5, '2023-02-03', 4, 1, 2, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('LIT-00353', 4, '2023-02-03', 4, 1, 4, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('LIT-00354', 6, '2023-02-03', 5, 1, 1, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('LIT-00355', 5, '2023-02-03', 5, 1, 2, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('LIT-00356', 7, '2023-02-03', 5, 1, 3, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00354', 6, '2023-02-03', 6, 1, 1, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00355', 3, '2023-02-03', 6, 1, 2, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00356', 4, '2023-02-03', 6, 1, 4, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00357', 3, '2023-02-03', 7, 1, 1, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00358', 3, '2023-02-03', 7, 1, 4, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00359', 7, '2023-02-03', 7, 1, 3, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00360', 3, '2023-02-03', 8, 1, 1, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00361', 3, '2023-02-03', 8, 1, 4, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00362', 5, '2023-02-03', 8, 1, 3, '1');
INSERT INTO dbo.t_specimen(code, quantity, dateRegister, idBook, idSpecimenState, idZone, state)
VALUES ('INF-00363', 4, '2023-02-03', 8, 1, 2, '1');

