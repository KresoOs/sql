-- ne mogu obrisati smjerove jer su vanjski ključ u grupi
delete from smjerovi;

select * from smjerovi;

delete from smjerovi where sifra=3;
-- ako želim obrisati sve smjerove moram
-- 1. brisati sve članove
delete from clanovi;
-- 2. brisati sve grupe
delete from grupe;
-- 3. i tek onda brisati sve smjerove
delete from smjerovi;