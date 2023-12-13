--use master
--create database taksisluzba
--use taksisluzba
create table vozaci (
sifra int,
ime varchar(50),
prezime varchar(50),
);

create table poslovi (
sifra int,
svecenik_posao int,
opis varchar(100),
mjesto varchar(100),
);

create table svecenik_posao (
sifra int,
posao int,
svecenik int,
);

create table nadzornisvecenik (
sifra int,
ime varchar (50),
prezime varchar (50),
svecenik int,
);

create table sponzori (
sifra int,
ime varchar(50),
prezime varchar(50),
iznos decimal(18,2),

);