use master;
go
drop database if exists restoran;
go
create database restoran;
go
use restoran;


create table kategorije(
sifra int not null primary key identity(1,1),

naziv varchar(50),
);
create table jela(
sifra int not null primary key identity(1,1),
ime varchar(50),
kategorija int,
);
create table pica (
sifra int not null primary key identity(1,1),
ime varchar(50),
);

create table piceuzjelo(
jelo int,
pice int,
);
alter table piceuzjelo add foreign key (jelo) references jela (sifra);
alter table piceuzjelo add foreign key (pice) references pica (sifra);
alter table jela add foreign key (kategorija) references kategorije (sifra);