--kommentaar
--SQL SERVER Management Stuudio
--Connect TO:
--Server Name: (LocalDB)\MSSQLLocalDB
-- Authentification 2 tüüpi:
--1. Windows Auth - localdb admini õigused
--2. SQL Server Auth - kontrollida varem tehtud kasutajad


CREATE DATABASE SudeichenkoLOGITpv23;
USE SudeichenkoLOGITpv23;

--tabeli loomine
--identity(1,1) - ise täidab tabeli 1,2,3
CREATE TABLE inimene(
inimeneID int Primary Key identity(1,1),
nimi varchar(50) unique,
synniaeg date,
telefon char(12),
pikkus decimal(5,2),
opilaskodu bit
);
SELECT * FROM inimene;

--tabeli kustutamine
DROP table ininmene;

------------------------------

--tabeli muutmine uue veergu lisamine
ALTER TABLE elukoht ADD autoID int;
--foreign key lisamine
ALTER TABLE elukoht ADd Constraint fk_autoID
FOREIGN KEY (autoID) 
references auto(autoID);


SELECT * FROM inimene;

CREATE TABLE autod(
autoID int PRIMARY KEY identity(1,1),
autoNr varchar(50) unique,
mudell varchar(50),
mark varchar(50) unique,
v_aasta int
);
SELECT * FROM autod;

--tabeli muutmine uue veergu lisamine
ALTER TABLE inimene ADD autoID int;
--foreign key lisamine
ALTER TABLE inimene 
ADd Constraint fk_autod
FOREIGN KEY (autodID) 
references autod(autodID);

INSERT INTO inimene
(nimi, synniaeg, telefon, pikkus, opilaskodu, elukohtID, autoID)
VALUES
('Bomba Fedya', '2020-11-02', '12345678', 182.1, 1, 1, 1)
;

