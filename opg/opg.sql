use master;
go
drop database if exists opg;
go
create database opg;
go
use opg;
create table proizvodi(
sifra int not null primary key identity (1,1),
Ime varchar (50),
cijena decimal (18,2),
tezina decimal (18,2),
djelatnik int,
);
create table sirovine (
sifra int not null primary key identity (1,1),
ime varchar (50),
tezina decimal(18,2),

);
create table djelatnici(
sifra int not null primary key identity (1,1),
Ime varchar (50),
prezime varchar (50),

);
create table proizvod_sirovina (
sifra int not null primary key identity (1,1),
proizvod int,
sirovina int,
);

alter table proizvod_sirovina add foreign key (proizvod) references proizvodi (sifra);
alter table proizvod_sirovina add foreign key (sirovina) references sirovine (sifra);
alter table proizvodi add foreign key (djelatnik) references djelatnici (sifra);