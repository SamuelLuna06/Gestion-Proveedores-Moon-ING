/*crear una base de datos que se llame tienda online, habilitar la bd, Crear tablas : producto(id- autoincrement, codigo de barras), usuarios, 
clientes(autoincrement), ventas(id-autoincrement, #orden),
4.Realizar relaciones: 
1 cliente puede realizar muchas ordenes (ventas)
1 usuario puede generar muchas ordenes 
un cliente puede comprar muchos productos
una orden puede contener muchos productos
un producto puede ser comprado muchas veces

5. minimo 4 insert por tabla
6. realizar las consultas:
consulta general de los producto 
ordenar productos x precio menos a mayor
consultar los clientes que nacen en enero
consultar los usuarios con rol de empleado
consultar las ordenes generados entrea marzo y junio
consultar producto que tengan la letra r
consultar las ventas que tengan productos con precios de 15.000

proemdio ventas, sumatoria total, cantidad de clientes, venta mas economica hecha
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
    foreign key (idProductoFK) references Producto(idProducto),
    foreign key (precioProductoFK) references Producto(precioProducto)
);
describe Producto;
insert into Producto values ("10001", '', 1.000, "Rana"), ("10002", '', 2.000, "Mousepad"), ("10003", '',  15.000, "Arroz"), ("10004", '', 30.000, "Mouse logitech"),("10005",'',8.000,"Gorros Bebe");
insert into Producto values ("","a1",8000, "Gorros bebe");
insert into Usuario values ('', "Samuel", "Cliente"), ('', "Jesus", "Empleado"), ('', "Juliana", "Cliente"), ('', "Paula", "Empleado");
insert into Cliente values ('', "Samuel", "2006-02-10"), ('', "Carlos", "2004-06-22"), ('', "Juliana", "2007-12-01"), ('', "Cristian", "2006-03-19");
insert into Cliente values ('',"Tatiana","2024-09-27");

select * from Usuario;
select * from Cliente;
select * from Producto;
select * from Venta;
select * from Venta_Producto;

describe venta;
insert into Venta values ('',1,'2024-09-27',6,6);


describe Venta_Producto;

insert into Venta_Producto values (1,1,4,10005,8000);

/* modificar*/

alter table Venta_Producto add numeroVentaFK int not null;
alter table Venta_Producto add constraint FK_Venta_Orden foreign key (numeroVentaFK) references venta(numeroVenta);





select* from Producto;
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



/*update tabla set atributo where condicion*/
/*update asistencia set asistencia ='r' where id=14;*/
