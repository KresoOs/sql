use master;
go
drop database if exists urar;
go

create database urar collate Croatian_CI_AS;
go

use urar;
create table urari(
sifra int not null primary key identity(1,1),
Ime varchar(50),
prezime varchar(50),
adresa varchar(50),
telefon varchar(50),
);
create table korisnici(
sifra int not null primary key identity(1,1),
Ime varchar(50),
prezime varchar(50),
adresa varchar(50),
telefon varchar(50),
);
create table satovi(
sifra int not null primary key identity(1,1),
kvar varchar(50),
);
create table segrti(
sifra int not null primary key identity(1,1),
Ime varchar(50),
prezime varchar(50),
adresa varchar(50),
telefon varchar(50),
);
create table popravci(
sifra int not null primary key identity(1,1),
cijena decimal(18,2),
urar int,
);
create table satovi_korisnici(
sifra int not null primary key identity(1,1),
sat int,
popravak int,
korisnik int,
);

create table segrti_popravci(
sifra int not null primary key identity(1,1),
popravak int,
segrt int,
);

alter table segrti_popravci add foreign key (segrt) references segrti(sifra);
alter table segrti_popravci add foreign key (popravak) references popravci(sifra);
alter table satovi_korisnici add foreign key (sat) references satovi(sifra);
alter table satovi_korisnici add foreign key (popravak) references popravci(sifra);
alter table satovi_korisnici add foreign key (korisnik) references korisnici(sifra);
alter table popravci add foreign key (urar) references urari(sifra);
