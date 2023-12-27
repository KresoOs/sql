use master;
go
drop database if exists samostan;
go
-- ovo je komentar
create database samostan;
go
use samostan;

create table svecenici(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
nadzornisvecenik int,
);
create table poslovi(
sifra int not null primary key identity(1,1),
opis varchar(50),
mjesto varchar(50),
);
create table nadzornisvecenici(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
);
create table svecenici_poslovi(
sifra int not null primary key identity(1,1),
posao int,
svecenik int,
);
alter table svecenici_poslovi add foreign key (svecenik) references svecenici(sifra);
alter table svecenici_poslovi add foreign key (posao) references poslovi(sifra);
alter table svecenici add foreign key (nadzornisvecenik) references nadzornisvecenici(sifra);
