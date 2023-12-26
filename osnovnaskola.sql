use master;
go
drop database if exists osnovnaskola;
go
create database osnovnaskola;
go
use osnovnaskola;
create table djeca(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),

);
create table radionice(
sifra int not null primary key identity(1,1),
Ime varchar(50),
uciteljica int,
);
create table uciteljice(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
);
create table radionice_djeca(
sifra int not null primary key identity(1,1),
dijete int,
radionica int,

);
alter table radionice_djeca add foreign key (dijete) references djeca(sifra);
alter table radionice_djeca add foreign key (radionica) references radionice(sifra);
alter table radionice add foreign key (uciteljica) references uciteljice(sifra);