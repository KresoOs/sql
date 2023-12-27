use master;
go
drop database if exists fakultet;
go
create database fakultet;
go
use fakultet;
create table studenti (
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar (50),

);
create table rokovi(
sifra int not null primary key identity(1,1),
kolegij int,
student_rok int,
datum datetime,
);
create table studenti_rokovi(
student int,

);
create table kolegij (
sifra int not null primary key identity(1,1),
ime varchar(50),
);