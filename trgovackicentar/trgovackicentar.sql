use master;
go
drop database if exists trgovackicentar;
go
create database trgovackicentar;
go
use trgovackicentar;

create table trgovine(
sifra int not null primary key identity(1,1),
ime varchar(50),
);
create table osobe (
sifra int not null primary key identity (1,1),
ime varchar(50),
prezime varchar(50),
sef int,
);
create table trgovine_osobe(
sifra int not null primary key identity (1,1),
trgovina int,
osoba int,
);

alter table osobe add foreign key (sef) references osobe(sifra);
alter table trgovine_osobe add foreign key (trgovina) references trgovine(sifra);
alter table trgovine_osobe add foreign key (osoba) references osobe(sifra);
