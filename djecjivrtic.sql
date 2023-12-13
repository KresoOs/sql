use master;
go
drop database if exists djecjivrtic;
go
create database djecjivrtic;
go
use  djecjivrtic;
create table djeca(
sifra int not null primary key identity(1,1),
ime varchar(50)not null,
prezime varchar(50) not null,
imeroditelja varchar(150),
telefon varchar(30),
skupina int,

);
create table odgajateljice(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
strucnasprema int,
);
create table skupine(
sifra int not null primary key identity(1,1),
ime varchar(50),
odgajateljica int,
);
create table strucnespreme(
sifra int not null primary key identity(1,1),
titula varchar(100),
); 

alter table djeca add foreign key (skupina) references skupine(sifra);
alter table odgajateljice add foreign key (strucnasprema) references strucnespreme(sifra);
alter table skupine add foreign key (odgajateljica) references odgajateljice(sifra);