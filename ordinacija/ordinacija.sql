use master;
go
drop database if exists ordinacija;
go

create database ordinacija collate Croatian_CI_AS;
go

use ordinacija;
create table doktori(
sifra int not null primary key identity(1,1),
Ime varchar(50),
prezime varchar(50),
specijalizacija varchar(50),

);
create table pacijenti(
sifra int not null primary key identity(1,1),
Ime varchar(50),
prezime varchar(50),
adresa varchar(50),
telefon varchar(50),
);
create table lijecenja(
sifra int not null primary key identity(1,1),
doktor int,
sestra int,
pacijent int
);
create table sestre(
sifra int not null primary key identity(1,1),
Ime varchar(50),
prezime varchar(50),
adresa varchar(50),
telefon varchar(50),
sestra_lijecenje int,
);
create table sestre_lijecenja(
sifra int not null primary key identity(1,1),
lijecenje int,
);


alter table lijecenja add foreign key (doktor) references doktori(sifra);
alter table lijecenja add foreign key (sestra) references sestre_lijecenja(sifra);
alter table lijecenja add foreign key (pacijent) references pacijenti(sifra);
alter table sestre add foreign key (sestra_lijecenje) references sestre_lijecenja(sifra);