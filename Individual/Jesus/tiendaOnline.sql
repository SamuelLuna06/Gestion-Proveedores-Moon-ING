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

create database Tienda_Online2;
use Tienda_Online2;

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
    numeroVentaFK int,
    foreign key (numeroVentaFK) references Venta(numeroVenta),
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

describe Producto;
delimiter //
create procedure registrarProductos (idProducto int, codigoBarrasProducto varchar(5),precioProducto float, nombreProducto varchar(20))
begin

insert into Producto values (idProducto, codigoBarrasProducto,precioProducto,nombreProducto);

end //
delimiter ;



drop procedure registrarProductos;

call registrarProductos ('', "ab1", 15000, "Detergente");

/*
SUBCONSULTAS

	Son consultas anidadas dentro de otra consulta 
	select campo_a_consultar, campo_a_consultar1, from tablaGrande(tabla Principal) where columna2 = (select columna2x from tablaPequeña (segundaTabla) where condicion)
    
    Consultar los datos de los empleados y su sueldo promedio
    
    select idEmpleado, nombreEmpleado, salario, (select avg(salario) from empleado) as promedio from empleado;

	consultar un empleado que tenga un sueldo mayor al sueldo promedio
    
    select idEmpleado, nombreEmpleado, salario, (select avg(salario) from empleado) as promedio from empleado where (select avg(salario) from empleado) > promedio;
																													Arriba esta mal era Salario > promedio
    
    select idEmpleado, nombreEmpleado, salario  from empleado where  salario > (select avg(salario) from empleado);  1. 3.
    
	Los empleados pertenecen a un area, consultar a que area pertenece un empleado
    
    select  idEmpleado, nombreEmpleado, idArea, nombreArea from empleado where idArea in (select idArea from Area where nombreEmpleado = "Juan")2.




*/

/*Calcular los producto que se vendan a un precio mayor del promedio de todos los productos*/

	

/*Mostrar los clientes que el total de compra sea mayor al promedio de compras de la tienda*/


/*Mostrar el promedio de precios de productos comprados por un cliente*/
