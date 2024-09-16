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
    foreign key (cedulaClienteFK) references Cliente(cedulaCliente)
);

CREATE TABLE Mascota_Vacuna(
	enfermedad varchar(15),
    /*Punto 3:*/
    foreign key (codigoVacunaFK) references Vacuna(codigoVacuna),
    foreign key (idMascotaFK) references Mascota(idMascota)
);

CREATE TABLE Vacuna(
	codigoVacuna int(11) primary key,
    nombreVacuna varchar(15),
    dosisVacuna int (10),
    enfermedad varchar(15)
);

CREATE TABLE Cliente(
	cedulaCliente int (11) primary key,
    nombreCliente varchar(15),
    apellidoCliente varchar(15),
    direccionCliente varchar(10),
    telefono int(10),
    /*Punto 3:*/
    foreign key (idMascotaFK) references Mascota(idMascota)
);

/*Punto 4:*/
alter table Producto
add cantidad int not null;

/*Punto 5:*/
alter table Mascota
change column cantidad cantidadMascota int;

/*Punto 6:*/
alter table mascota_Vacuna rename detalleVacuna;