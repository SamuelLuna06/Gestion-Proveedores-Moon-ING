/*Punto 1:*/
CREATE DATABASE Quiz;
USE Quiz;

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
	precio float
    /*Punto 3:
    foreign key (cedulaClienteFK) references Cliente(cedulaCliente)*/
);

CREATE TABLE Mascota_Vacuna(
	enfermedad varchar(15),
    codigoVacunaFK int,
    idMascotaFK int,
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
    telefono varchar(10),
    idMascotaFK int,
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

select * from Mascota;


insert into Mascota values(1,"ramon","M","pug","1");
insert into Mascota values(2,"Emily","H","Gato","1");
insert into Mascota values(3,"Nieve","H","pug","1");
insert into Mascota values(6,"Nieve","H","pug","1");


describe Producto;

insert into Producto values(1,"Shampoo","Milton",5000,1);
insert into Producto values(2,"Talco","Juan",4000,1);

describe Mascota;

describe Vacuna;

insert into Vacuna values("1","Acetaminofen",50, "Malestar");
insert into Vacuna values("2","Morfina",10, "Fiebre");

select * from Vacuna;

insert into Cliente values(1016006851,"Jesus", "Peña","Calle 6", "3214459100");
insert into Cliente values(1016006853,"Sam", "Luna","Calle 7", "3214459101");
select * from Cliente;


select * from detalleVacuna;

insert into detalleVacuna values("Fiebre");
insert into detalleVacuna values("Malestar");


select nombreMascota, razaMascota from Mascota;
/*mascota, producto y vacunas consulta por alias*/
/*Vacuna*/
select codigoVacuna as "Codigo" from Vacuna;
/*Producto*/
select precio as "Valor" from Producto;
/*Mascota*/
select generoMascota as "Genero" from Mascota;



/*Ordernar*/

/*select nombreCliente from Cliente order by ASC / DSC*/

select nombre, marca from Producto order by precio desc;



select nombreProducto from Producto where precio = 5000;

select enfermedad from Mascota_Vacuna where codigoVacunaFK = 1;


/*2 consultas usando operadores logicos y relacionales en vacuna, mascota y cliente*/

describe Vacuna;
describe Mascota_Vacuna;
describe Cliente;


select idMascota from Mascota where idMascota <> 2;

select enfermedad from Vacuna where enfermedad = "Fiebre";

select * from Quiz.Vacuna where Quiz.Vacuna.enfermedad = "Fiebre";
