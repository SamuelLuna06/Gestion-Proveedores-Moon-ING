create database MoonIng;
use MoonIng;

create table Proveedor (
	idProveedor	int primary key auto_increment,
	nomProv	varchar (100) not null,
	ubicación varchar (50),
	contacto varchar(10) not null,
	correo varchar (50),
	direccion varchar (50)
);

create table Producto (
	idProducto int primary key auto_increment,
	nomProducto	varchar(100),
	idProveedorFK int,

	foreign key (idProveedorFK) references Proveedor(idProveedor)
);

create table Empleado (
	idEmpleado int primary key auto_increment,
	nomEmpleado	varchar (50) not null,
	CCEmpleado	int not null,
	estadoEmpleado	bool not null
);

create table Orden (
	idOrden	int primary key auto_increment,
	fechaOrden date not null,
	idEmpleadoFK int,
	
	foreign key (idEmpleadoFK) references Empleado(idEmpleado)
);

create table ordenProducto(
	idOrdenFK int,
    idProductoFK int,
    cantidad int not null,
    
	foreign key (idOrdenFK) references Orden(idOrden),
    foreign key (idProductoFK) references Producto(idProducto)
);
