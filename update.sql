
select * from smjerovi 
where sifra=1;

-- mijenjanje samo jedne kolone na samo jednom redu
update smjerovi set naziv='C# programiranje'
where sifra=1;

-- mjenjanje vrijednosti više kolona odjednom
update smjerovi set trajanje=300, cijena=2000
where sifra=2;

-- Smjer čšćđž ČŠĆĐŽ promjeniti na Serviser koji traje 120 sati
-- i cijena mu je 1500 EURA.

update smjerovi set naziv='Serviser', trajanje=120, cijena=1500
where sifra=3;


select * from smjerovi;


-- svim smjerovim digni cijenu za 20%

update smjerovi set cijena=cijena*1.2;

-- svim smjerovim umanji cijenu za 20%

update smjerovi set cijena=cijena*0.8;

-- umanjite svim smjerovima cijenu za 100 E

update smjerovi set cijena=cijena-100;

select * from polaznici;

-- Polazniku Josip Rebolj 
-- postavite oib 00000000001 i broj ugovora 12/2023

update polaznici set oib='00000000001', brojugovora='12/2023'
where sifra=18;

update polaznici set oib='     ', brojugovora=''
where sifra=19;

update polaznici set oib=null, brojugovora=null
where sifra=19;

select * from grupe;

-- ne može se postaviti vrijednost vanjskog ključa koji ne postoji kao primarni
update grupe set smjer=10 where sifra=1;

-- ne mogu se postavljati vrijednosti vanjskog ključa koji ne postoji kao primarni
insert into clanovi values (1,56);



