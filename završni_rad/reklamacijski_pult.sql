﻿use master;
go
drop database if exists reklamacijski_pult ;
go
create database reklamacijski_pult collate Croatian_CI_AS;
go
use reklamacijski_pult;

create table djelatnici(
	sifra int not null primary key identity(1,1),
	ime varchar (50),
	prezime varchar (50),
);
create table proizvodi(
	sifra int not null primary key identity(1,1),
	ime varchar (255),
	opis varchar (255),
	jedinica_kolicine varchar (50),

);
create table kupci (
	sifra int not null primary key identity(1,1),
	Ime varchar (50),
	prezime varchar (50),
	telefon varchar (50),
	email varchar (100),
);

insert into djelatnici (ime,prezime)
	values
	('Krešimir','Bilokapić'),
	('Goran','Ćutuk'),
	('Marko','Pavičić'),
	('Ivan','Demeter');
	
insert into proizvodi (ime,opis,jedinica_kolicine)
	values
	('Dječji pametni sat MYKI 4 Lite','pametni sat posebno dizajniran za djecu','kom'),
	('Električni romobil MS ENERGY Energy m10','Energy m10, autonomija do 28km, brzina 25km/h, kotači 8˝, sivi','kom'),
	('Tipkovnica OCTIO K100U','Tip tipkovnice: USB žičana','kom');

insert into kupci (ime,prezime,telefon,email)
	values
	('Krešimir','Bilokapić','099/214-1409','ilead7@gmail.com'),
	('Danijel','Bjelajac','098/169-8828','ulead7@gmail.com'),
	('Duje','Garić','095/300-600','elead7@gmail.com');
