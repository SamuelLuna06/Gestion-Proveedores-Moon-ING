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
    foreign key (idClienteFK) references Cliente(idCliente),
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
    foreign key (idProductoFK) references Producto(idProducto)
);

insert into Producto values ("10001", '', 1.000, "Rana"), ("10002", '', 2.000, "Mousepad"), ("10003", '',  15.000, "Arroz"), ("10004", '', 30.000, "Mouse logitech");
insert into Usuario values ('', "Samuel", "Empleado"), ('', "Jesus", "Empleado"), ('', "Juliana", "Cliente"), ('', "Paula", "Empleado");
insert into Cliente values ('', "Juan Pablo", "2006-02-10"), ('', "Carlos", "2004-06-22"), ('', "Juliana", "2007-12-01"), ('', "Cristian", "2006-03-19");
insert into Venta values ('', 101, "2024-02-29", 1, 4), ('', 102, "2024-03-12", 2, 3), ('', 103, "2024-04-05", 3, 2), ('', 104, "2024-09-23", 4, 1);

select codigoBarrasProducto, idProducto from Producto order by precioProducto desc;
select idUsuario, nombreUsuario from Usuario where rolUsuario = "Empleado";
select idVenta, numeroVenta from Venta where fechaVenta/*??*/;
select idProducto, precioProducot from Producto where nombreProducto like '%r%';
select cantidad, totalVentas from Venta_Producto where precioProductoFK between 15.000 and 30.000;

select avg totalVentas from Venta_Producto;
select sum cantidad from Venta_Producto;
select count(idCliente) from Cliente;
select min(idVentaFK) from Venta_Producto;

/*
Consultar el cliente que tiene la mayor venta
Consultar cliente y usuario de una venta especifica
Consultar los productos que compro un cliente especifico
Consultar todos los clientes que han hecho ventas
*/

select* from Venta_Producto as VP inner join Cliente as C on C.idCliente where VP.max(precioProductoFK);
select* from Usuario as U inner join Cliente as C inner join Venta V on U.idUsuario.nombreUsuario and C.idClienteFK.nombreCliente where V.idVenta = 101;
select* from Cliente as C inner join Producto as P where P.idProducto = C.idCliente;
select* from Cliente as C inner join Venta as V where C.idCliente = V.idVenta;

/*
update tabla set campo = x when campo = x
delete from tabla where campo = x;
*/

insert into Cliente values ('', "Tatiana cabrera", "1975-05-20");
insert into Producto values ("10005", '', 10.000, "Medias para bebe");
insert into Venta values ('',105, "2024-09-27", 5, 1);
insert into Venta_Producto values (2, 1, 5, 10005, 10.000);

select* from Cliente;
select* from Producto;
select* from Usuario;
select* from Venta;
select* from Venta_Producto;
describe Venta_Producto;