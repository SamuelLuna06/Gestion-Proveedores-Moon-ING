/*
1. Crear una base de datos que se llame tienda online.
2. Habilitar la base de datos.
3. Crear tablas:
	a. Producto. -> id (Autoincrement) - codigo de barras
	b. Usuario.
    c. Clientes. (Autoincrement)
    d. Ventas(Orden). -> id (Autoincrement) -> #orden
4. Realizar relaciones.
	a. Un cliente puede realizar muchas ordenes (ventas).
    b. Un ususario puede generar muchas ordenes. 
    c. Una orden puede contener muchos productos.
    d. Un producto puede ser comprado muchas veces
5. Minimo cuatro inserciones por tabla.
6. Realizar las siguientes consultas:
	a. Consulta generar de todos los productos.
    b. Orden productos de menor precio a mayor.
    c. Consultar los clientes que nacen en enero.
    d. Consultar los usuarios con rol empleado.
    e. Consultar las ordenes generedas entre marzo y junio.
    f. Consultar productos que contengan la letra r.
    g. Consultar las ventas que tengan productos con precios de 15.000 o 30.000.
    
Promedio de ventas
Suma total de ventas
Cantidad de Clientes
Venta mas economica hecha
*/

create database Tienda_Online;
use Tienda_Online;

create table Producto
(
    idProducto int auto_increment primary key,
    codigoBarrasProducto varchar(5) not null,
    precioProducto float(10) not null,
    nombreProducto varchar(20)
);

create table Usuario 
(
    idUsuario int auto_increment primary key,
    nombreUsuario varchar(30) not null,
    rolUsuario varchar(20) not null
);

create table Cliente
(
    idCliente int auto_increment primary key,
    nombreCliente varchar(30) not null,
    fechaNacimientoCliente date not null
);

create table Venta
(
    idVenta int auto_increment primary key,
    numeroVenta int not null,
    fechaVenta date not null,
    idClienteFK int,
    idUsuarioFK int,
    foreign key (idClienteFK) references Clientes(idCliente),
    foreign key (idUsuarioFK) references Usuario(idUsuario)
);

create table Venta_Producto 
(
	cantidad int not null,
    totalVentas int not null,
    idVentaFK int,
    idProductoFK int,
	precioProductoFK float,
    foreign key (idVentaFK) references Venta(idVenta),
    foreign key (idProductoFK) references Producto(idProducto),
    foreign key (precioProductoFK) references Producto(precioProducto)
);

insert into Producto values ("10001", '', 1.000, "Rana"), ("10002", '', 2.000, "Mousepad"), ("10003", '',  15.000, "Arroz"), ("10004", '', 30.000, "Mouse logitech");
insert into Usuario values ('', "Samuel", "Cliente"), ('', "Jesus", "Empleado"), ('', "Juliana", "Cliente"), ('', "Paula", "Empleado");
insert into Cliente values ('', "Samuel", 10/02/2006), ('', "Carlos", 22/06/2004), ('', "Juliana", 01/12/2007), ('', "Cristian", 19/03/2006);
insert into Venta values ('', 101, 29/02/2024), ('', 102, 12/03/2024), ('', 103, 05/04/2024), ('', 104, 23/09/2024);

select* from Producto;
select codigoBarrasProducto, idProducto from Producto order by precioProducto desc;
select idUsuario, nombreUsuario from Usuario where rolUsuario = "Empleado";
select idVenta, numeroVenta from Venta where fechaVenta/*??*/;
select idProducto, precioProducot from Producto where nombreProducto like '%r%';
select cantidad, totalVentas from Venta_Producto where precioProductoFK between 15.000 and 30.000;

select avg totalVentas from Venta_Producto;
select sum cantidad from Venta_Producto;
select sum idCliente from Cliente;
select idVentaFK, idProductoFK from Venta_Producto where precioProductoFK <= precioProductoFK;