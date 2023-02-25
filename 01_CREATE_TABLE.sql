----------------------------
--author table
----------------------------
CREATE TABLE IF NOT EXISTS dbo.t_author(
	idAuthor 		serial NOT NULL,
	name 			varchar(60) NOT NULL,
	lastName 		varchar(100) NOT NULL,
	state 			varchar(1) DEFAULT '1'
);

ALTER TABLE dbo.t_author
    add constraint pk_id_author
    primary key(idAuthor);

----------------------------
--editorial table
----------------------------
CREATE TABLE IF NOT EXISTS dbo.t_editorial(
    idEditorial     serial NOT NULL,
    name            varchar(100) NOT NULL,
    state           varchar(1) DEFAULT '1'
);

ALTER TABLE dbo.t_editorial
    add constraint pk_id_editorial
    primary key(idEditorial);

----------------------------
--area table
----------------------------
CREATE TABLE IF NOT EXISTS dbo.t_area(
    idArea          serial NOT NULL,
    description     varchar(100) NOT NULL,
    state           varchar(1) DEFAULT '1'
);

ALTER TABLE dbo.t_area
    add constraint pk_id_area
    primary key(idArea);

----------------------------
--libary table
----------------------------
CREATE TABLE IF NOT EXISTS dbo.t_library(
    idLibrary       serial NOT NULL,
    name            varchar(100) NOT NULL,
    description     varchar(500),
    address         varchar(150),
    state           varchar(1) DEFAULT '1'
);

ALTER TABLE dbo.t_library
    add constraint pk_id_library
    primary key(idLibrary);

----------------------------
--specimen_state table
----------------------------
CREATE TABLE IF NOT EXISTS dbo.t_specimen_state(
    idSpecimenState serial NOT NULL,
    description     varchar(40) NOT NULL,
    state           varchar(1) DEFAULT '1'
);

ALTER TABLE dbo.t_specimen_state
    add constraint pk_specimen_state
    primary key(idSpecimenState);

----------------------------
--sub_area table
----------------------------
CREATE TABLE IF NOT EXISTS dbo.t_sub_area(
    idSubArea       serial NOT NULL,
    description     varchar(100) NOT NULL,
    idArea          integer NOT NULL,
    state           varchar(1) DEFAULT '1'
);

ALTER TABLE dbo.t_sub_area
    add constraint pk_id_sub_area
    primary key(idSubArea);

ALTER TABLE dbo.t_sub_area
    add constraint fk_id_area
    foreign key (idArea)
    references dbo.t_area (idArea);
----------------------------
--sub_area table
----------------------------
CREATE TABLE IF NOT EXISTS dbo.t_book(
    idBook          serial NOT NULL,
    isbn            varchar(30),
    title           varchar(200) NOT NULL,
    subTitle        varchar(500),
    description     varchar(1000),
    numberPage      varchar(10),
    yearPublication varchar(4),
    idEditorial     integer NOT NULL,
    idSubArea       integer NOT NULL,
    state           varchar(1) DEFAULT '1'
);

ALTER TABLE dbo.t_book
    add constraint pk_id_book
    primary key(idBook);

ALTER TABLE dbo.t_book
    add constraint fk_id_editorial
    foreign key (idEditorial)
    references dbo.t_editorial (idEditorial);

ALTER TABLE dbo.t_book
    add constraint fk_id_sub_area
    foreign key (idSubArea)
    references dbo.t_sub_area (idSubArea);
----------------------------
--book_author table
----------------------------
CREATE TABLE IF NOT EXISTS dbo.t_book_author(
    idBookAuthor     serial NOT NULL,
    idBook           integer NOT NULL,
    idAuthor          integer NOT NULL,
    state            varchar(1) DEFAULT '1'
);

ALTER TABLE dbo.t_book_author
    add constraint pk_id_book_author
    primary key(idBookAuthor);

ALTER TABLE dbo.t_book_author
    add constraint fk_id_book_01
    foreign key (idBook)
    references dbo.t_book (idBook);

ALTER TABLE dbo.t_book_author
    add constraint fk_id_author
    foreign key (idAuthor)
    references dbo.t_author (idAuthor);
----------------------------
--book_author table
----------------------------
CREATE TABLE IF NOT EXISTS dbo.t_zone(
    idZone          serial NOT NULL,
    description     varchar(100),
    idLibrary        integer NOT NULL,
    state           varchar(1) DEFAULT '1'
);

ALTER TABLE dbo.t_zone
    add constraint pk_id_zone
    primary key(idZone);

ALTER TABLE dbo.t_zone
    add constraint fk_id_library
    foreign key (idLibrary)
    references dbo.t_library (idLibrary);
----------------------------
--specimen table
----------------------------
CREATE TABLE IF NOT EXISTS dbo.t_specimen(
    idSpecimen      serial NOT NULL,
    code            varchar(40) NOT NULL,
    quantity        integer NOT NULL,
    dateRegister    date,
    idLibrary       integer NOT NULL,
    idSpecimenState integer NOT NULL,
    idZone          integer NOT NULL,
    state           varchar(1) DEFAULT '1'
);

ALTER TABLE dbo.t_specimen
    add constraint pk_id_specimen
    primary key(idSpecimen);

ALTER TABLE dbo.t_specimen
    add constraint fk_id_zone
    foreign key (idZone)
    references dbo.t_zona (idZone);

ALTER TABLE dbo.t_specimen
    add constraint fk_id_spacimen_state
    foreign key (idSpecimenState)
    references dbo.t_specimen_state (idSpecimenState);

ALTER TABLE dbo.t_specimen
    add constraint fk_id_book_librar
    foreign key (idLibrary)
    references dbo.t_book (idLibrary);
