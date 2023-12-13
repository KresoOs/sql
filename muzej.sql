use master;
go
drop database if exists muzej;
go
-- ovo je komentar
create database muzej;
go
use muzej;
create table djela(
sifra int not null primary key identity(1,1),
ime varchar(50),
tehnika varchar(50),
autor varchar(150),
datum date,
izlozba int,
);
create table izlozbe(
sifra int not null primary key identity(1,1),
ime varchar(150),
sponzor int,
);
create table kustosi(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
izlozba int,
);
create table sponzori(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
iznos decimal(18,2),
);
alter table djela add foreign key (izlozba) references izlozbe(sifra);
alter table izlozbe add foreign key (sponzor) references sponzori(sifra);
alter table kustosi add foreign key (izlozba) references izlozbe(sifra);