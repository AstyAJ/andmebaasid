-- SQL kommentaar
-- SQL Server Management Stuudio
-- connect to 
--(localdb)\mssqllocaldb
--Authentification: Windows Auth - admini õigused localhostis
--Authentification: SQL Server Auth - varem loodud kasutajad
--New Query
CREATE DATABASE jegorov1;
--Object Explorer on vaja pidevalt uuendada käsitsi!
USE jegorov1;
--tabeli loomine
CREATE TABLE opilane(
	opilaneID int Primary Key identity(1,1),
	eesnimi varchar(25),
	perenimi varchar(25) Unique,
	synniaeg date,
	aadress TEXT,
	opilaskodu bit
);
-- select table
SELECT * FROM opilane;

--tabeli kustutamine 
DROP table opilane;

--andmete lisamine tabelisse
INSERT INTO opilane(eesnimi, perenimi, synniaeg, aadress, opilaskodu)
VALUES ('Gerald', 'Rodger', '1211-12-08', 'Rivia', '1'),
    ('Steve', 'Sigma', '2011-12-19', 'Minecraft', '0'),
    ('Lux', 'light', '2015-07-14', 'Demacia', '0'),
    ('Herobrine', 'Hero', '2013-12-19', 'Minecraft', '0'),
    ('Irelia', 'sword', '2017-07-14', 'Demacia', '0');

--tabel Rühm
--identity(1,1) - automaatselt täitab 1,2,...
CREATE TABLE ryhm(
ryhmID int not null primary key identity(1,1),
ryhm VARCHAR(10) UNIQUE,
osakond VARCHAR(20),
);
INSERT INTO ryhm(ryhm, osakond)
VALUES ('TITpv24','IT'),('KRRpv23','Rätsep'),('MEHpv23','Mehatronik')

SELECT * FROM ryhm;
--lisame uus veerg RyhmID tabelisse opilane
ALTER TABLE opilane ADD ryhmID int;

SELECT * FROM opilane;
--lisame foreing key veergule ryhmID mis on seotud
--tabeliga ryhm ja veerguga ryhmID
ALTER TABLE opilane
ADD FOREIGN KEY (ryhmID) references ryhm(ryhmID);

--foreign key kontroll
INSERT INTO opilane(eesnimi, perenimi, synniaeg, aadress, opilaskodu, ryhmID)
VALUES ('Timur', 'Gnosh', '1211-02-08', 'Riia', 1, 3);

SELECT * FROM opilane;
--kasutame seos tabelite vahel - JOIN
SELECT * FROM opilane JOIN ryhm
ON opilane.ryhmID=ryhm,ryhmID;

SELECT opilane.perenimi, ryhm.ryhm FROM opilane JOIN ryhm
ON opilane.ryhmID=ryhm,ryhmID;

--lihtsaim vaade
SELECT o.perenimi, r.ryhm
FROM opilane o JOIN ryhm r
ON o.ryhmID=r,ryhmID;

--tabeli kustutamine 
DROP table ryhm;

--tabel hinne
CREATE TABLE hinne(
hinneID int primary key identity(1,1),
hinne int, 
opilaneid int,
oppeaine VARCHAR(50)
);
ALTER TABLE hinne
ADD foreign key (opilaneID) references opilane(opilaneID);
INSERT INTO hinne(opilaneID, opilane, hinne),
VALUES(3, 'andmebaasid', 5);
SELECT * FROM opilane JOIN hinne
ON opilane.opilaneID=hinne.hinneID;
