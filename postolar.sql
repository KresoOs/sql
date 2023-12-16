use master;
go
drop database if exists postolar;
go
create database postolar;
go
use postolar;

create table obuce(
sifra int not null primary key identity(1,1),
korisnik_obuca int,
);

create table popravci(
sifra int not null primary key identity(1,1),
postolar int,
cijena decimal(18,2),
);

create table postolari(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
adresa varchar(50),


);

create table korisnici(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
telefon varchar(50),
);

create table segrti(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
telefon varchar(50),
);
create table segrt_popravak(
sifra int not null primary key identity(1,1),
popravak int,
segrt int,
);
create table korisnici_obuce(
sifra int not null primary key identity(1,1),
korisnik int,
popravak int,

);
alter table popravci add foreign key (postolar) references postolari(sifra);
alter table segrt_popravak add foreign key (popravak) references popravci(sifra);
alter table segrt_popravak add foreign key (segrt) references segrti(sifra);
alter table korisnici_obuce add foreign key (popravak) references popravci(sifra);
alter table korisnici_obuce add foreign key (korisnik) references korisnici(sifra);
alter table obuce add foreign key (korisnik_obuca) references korisnici_obuce(sifra);