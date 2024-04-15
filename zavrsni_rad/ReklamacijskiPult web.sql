select name, collation_name from sys.databases;
go
alter database db_aa6919_reklamacijskipult set single_user with rollback immediate;
go
alter database db_aa6919_reklamacijskipult collate Croatian_CI_AS;
go
alter database db_aa6919_reklamacijskipult set multi_user;
go
select name, collation_name from sys.databases;
go



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



create table radninalozi (
	sifra int not null primary key identity(1,1),
	proizvod int,
	kupac int,
	datum date,
	napomena varchar(150),
	
	
	

);

create table stanja (
	sifra int not null primary key identity(1,1),
	
	
	naziv varchar(50),
	

);

create table promjene (
sifra int not null primary key identity(1,1),
djelatnik int,
stanje int,
radninalog int

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
	('Električni romobil MS ENERGY Energy m10','Energy m10, autonomija do 28km, brzina 25km/h, kotači 8", sivi','kom'),
	('Tipkovnica OCTIO K100U','Tip tipkovnice: USB žičana','kom');

insert into kupci (ime,prezime,telefon,email)
	values
	('Krešimir','Bilokapić','099/214-1409','ilead7@gmail.com'),
	('Danijel','Bjelajac','098/169-8828','ulead7@gmail.com'),
	('Duje','Gari?','095/300-600','elead7@gmail.com');

insert into stanja (naziv)
	values
		('Zaprimljeno'),
		('Poslano u servis'),
		('Zaprimljeno u servisu'),
		('Dijagnostika'),
		('Servis završen'),
		('Poslano u poslovnicu'),
		('Zaprimljeno u poslovnici'),
		('Kupac obaviješten'),
		('Izdano');
insert into radninalozi (proizvod,kupac,datum)
	values
		(1,1,'2024-04-04')
insert into promjene (djelatnik,stanje,radninalog)
	values
		(1,1,1)
		

alter table radninalozi add foreign key (proizvod) references proizvodi (sifra);

alter table promjene add foreign key (radninalog) references radninalozi (sifra);
alter table promjene add foreign key (djelatnik) references djelatnici (sifra);
alter table promjene add foreign key (stanje) references stanja (sifra);

alter table radninalozi add foreign key (kupac) references kupci (sifra);




