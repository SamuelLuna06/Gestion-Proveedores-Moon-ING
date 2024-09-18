/*Punto 1:*/
CREATE DATABASE Mascotas;
USE Mascotas;

/*Punto 2:*/
CREATE TABLE Mascota(
    idMascota int(11) primary key,
    nombreMascota varchar(15),
    generoMascota varchar(15),
    razaMascota varchar(15),
    cantidad int(10)
);

CREATE TABLE Producto(
    codigoProducto int(11) primary key,
    nombreProducto varchar(15),
    marca varchar(15),
    precio float,
    /*Punto 3:*/
    cedulaClienteFK int(11),
    foreign key (cedulaClienteFK) references Cliente(cedulaCliente)
);

CREATE TABLE Vacuna(
    codigoVacuna int(11) primary key,
    nombreVacuna varchar(15),
    dosisVacuna int(10),
    enfermedad varchar(15)
);

CREATE TABLE Mascota_Vacuna(
    enfermedad varchar(15),
    /*Punto 3:*/
    codigoVacunaFK int(11),
    idMascotaFK int(11),
    foreign key (codigoVacunaFK) references Vacuna(codigoVacuna),
    foreign key (idMascotaFK) references Mascota(idMascota)
);

CREATE TABLE Cliente(
    cedulaCliente int(11) primary key,
    nombreCliente varchar(15),
    apellidoCliente varchar(15),
    direccionCliente varchar(10),
    telefono int(10)
);

/*Punto 4:*/
ALTER TABLE Producto
ADD cantidad int NOT NULL;

/*Punto 5:*/
ALTER TABLE Mascota
CHANGE COLUMN cantidad cantidadMascota int;

/*Punto 6:*/
ALTER TABLE Mascota_Vacuna RENAME TO detalleVacuna;

DESCRIBE Mascota;
DESCRIBE Cliente;
DESCRIBE Vacuna;
DESCRIBE Producto;

insert into Mascota values (1, "Pepe", "M", "criollo", 1), (2, "rocio", "F", "criollo", 1), (3, "jack", "M", "criollo", 1);
insert into Cliente values (012, "Samuel", "Luna", "Lagos", 3213669990), (345, "Jesus", "Peña", "Tintal", 3781590003);
insert into Producto values (19898, "Cepillo", "Pets&Love", 12900, 012,1), (1835, "Crema de Dientes", "Pets&Love", 6900, 012, 1);
insert into Vacuna values (000132130, "Antirrábica", 2, "Rabia"), (0012339, "Polivalente Canina", 1, "Hepatitis");

SELECT* from Mascota;
SELECT* from Cliente;
SELECT* from Producto;
SELECT* from Vacuna;