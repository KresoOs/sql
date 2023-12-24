use master;
go
drop database if exists osnovnaskola;
go
create database osnovnaskola;
go
use osnovnaskola;
create table djeca(
sifra int not null primary key identity(1,1),
ime varchar(50),
);