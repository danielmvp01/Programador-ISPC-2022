CREATE DATABASE peluqueria_canina

USE peluqueria_canina

CREATE TABLE Dueno
(
DNI int primary key not null,
Nombre varchar (50) not null,
Apellido varchar (50) not null,
Telefono int not null,
Direccion varchar (50) not null
);

CREATE TABLE Perro
(
ID_Perro int primary key not null,
Nombre varchar (25) not null,
Fecha_nac date,
Sexo varchar (6) not null,
DNI_dueno int not null,
FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
);


CREATE TABLE Historial
(
ID_Historial int primary key not null,
Fecha date not null,
Perro int not null,
Descripcion varchar (100),
Monto int not null,
FOREIGN KEY (Perro) REFERENCES Perro(ID_Perro)
);

INSERT INTO Dueno(DNI,Nombre,Apellido,Telefono,Direccion)VALUES
('33806321', 'Sergio', 'Aranda', '376498459','Calle Falsa');

INSERT INTO Perro(ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueno)VALUES
('1', 'Coco', '2020-12-01', 'macho','33806321');

SELECT * FROM Perro
/*Actualice la fecha de nacimiento de algún animal (perro) que usted considere.*/
UPDATE Perro SET Fecha_nac='2021-03-25' WHERE Fecha_nac='2020-12-01';