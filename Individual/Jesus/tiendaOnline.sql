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

create database tiendaOnline;
use tiendaOnline;

CREATE TABLE producto (
    idProducto INT AUTO_INCREMENT,
    codBarras INT AUTO_INCREMENT PRIMARY KEY,
    nombreProducto VARCHAR(15),
    precioProducto FLOAT,
    cantProducto INT
);

create table producto_venta(
	idProductoFK int,
    idVentaFK int,
    fechaVenta date,
    cantidadProducto int,
    foreign key (idProductoFK) references Producto(idProducto),
	foreign key (idVentaFK) references Venta(idVenta)   
);

create table ventas(
	idVenta int auto_increment primary key,
    numOrden int auto_increment,
    precioVenta float,
    idUsuarioFK int,
    idClienteFK int,
    
	foreign key (idUsuarioFK) references usuario(idUsuario),
    foreign key (idClienteFK) references Cliente(idCliente)
);

create table usuario(
	idUsuario int primary key,
	nombreUsuario varchar(20),
    rolUsuario varchar(15),
    fechaNUsuario date
    
);

create table cliente(
	idCliente int auto_increment primary key,
    nombreCliente varchar (15)
);


/*Inserts*/
describe Producto;
insert into Producto values(" "," ","Shampoo",15000,15);
insert into Producto values(" "," ","Jabon",8000,25);
insert into Producto values(" "," ","Gel",7000,16);
insert into Producto values(" "," ","Acondicionador",11000,18);

describe Ventas;


/*Consultas*/

select * from Producto;

select precioProducto from Producto order by precioProducto asc;

select fechaNUsuario from usuario where fechaNUsuario like "%01%";

select fechaNUsuario from usuario where rolUsuario like "Empleado";

select fechaVenta from producto_Venta where fechaVenta between "2024/03/01" and "2024/06/01";

select nombreProducto from Producto where nombreProducto like "r";
