use master;
go
drop database if exists postolar;
go
create database postolar;
go
use postolar;

create table obuce(
sifra int not null primary key identity(1,1),
);

create table popravci(
sifra int not null primary key identity(1,1),
);

create table postolari(
sifra int not null primary key identity(1,1),
);

create table korisnici(
sifra int not null primary key identity(1,1),
);

create table segrti(
sifra int not null primary key identity(1,1),
);
