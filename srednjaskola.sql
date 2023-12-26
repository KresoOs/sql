use master;
go
drop database if exists srednjaskola;
go
create database srednjaskola;
go
use srednjaskola;

create table razredi(
sifra int not null primary key identity(1,1),
ime varchar(50),

);
create table ucenici(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
razred int,
);
create table profesori(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),

);
create table profesor_razred(
profesor int,
razred int,
);
alter table profesor_razred add foreign key (profesor) references profesori(sifra);
alter table profesor_razred add foreign key (razred) references razredi(sifra);
alter table ucenici add foreign key (razred) references razredi(sifra);