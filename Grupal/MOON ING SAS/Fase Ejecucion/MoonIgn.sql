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

describe Proveedor;

/*Insert Proveedor*/
insert into Proveedor values ('','ICOMALLAS','BOGOTA','3107140915','ventasbogota@icomallas.com / deysy.gomez@icomallas.com','Bodega 1 : Carrera 27 N° 13-91 B/Paloquemao'),
('','ACEROS METALES Y MALLAS LTDA','BOGOTA','3103449000','comercial@amym.co','Calle 93 # 15 59 of. 201'),
('','INCOLMALLAS','BOGOTA','3118480768','Ventas@dimetales.com','Calle 37 S #23C-24'),
('','DIMETALES','BOGOTA','3115605339','Ventas@dimetales.com','Calle 13 No. 21 -89'),
('','HIERROS BOGOTA','BOGOTA','3174450398','hierrosbogotavirtual@gmail.com','Av. Calle 72 # 73A-58'),
('','TUVACOL SA','BOGOTA','6018237779','Gerventasper@tuvacol.com','Bodega 1 Manzana B Parque Industrial San José'),
('','MUNDIAL DE DOBLECES','BOGOTA','3046706364','mundialdedobleces1@hotmail.com','Carrera 70 # 31-51 Sur'),
('','PASCO FERRETERIA LTDA','BOGOTA','3108528773','contacto@pascoferreteria.com','CARRERA 25 NO. 13 -12'),
('','DISTRIANDAMIOS','BOGOTA','3114906010','infodistriandamios@gmail.com','Calle 18 # 107-24'),
('','REALCOL','MEDELLIN','3502827207','info@realcol.com /  auxiliar@realcol.com',' Las Palmas Kilómetro 8. Carrera 10 #10 - 172'),
('','RODACHINES INDUSTRIALES Y CIA LTDA','BOGOTA','3196262028','comercial@rodachines.co','Calle 17 # 25-18'),
('','ABRASIVOS Y CORTE SAS','BOGOTA','6012010182','ferreteriaabrasivosycorte@hotmail.com','Cra. 28a #17-43'),
('','WÜRTH COLOMBIA','BOGOTA','318280043','ecommerce@wurth.com.co','AC 63 # 74B-42'),
('','FERRETERIA GARZON','BOGOTA','3012992067','contacto@ferrealegarzon.com','Carrera 15 # 11 – 68'),
('','ROTOFLEX','BOGOTA','6012683012','Servicioalcliente@rotoflex.co / gerencia@rotoflex.co / sugerencia@rotoflex.co / ventas5@rotoflex.co','Calle 24 C No. 25 - 24'),
('','NIPLES Y ACCESORIOS DE COLOMBIA','CALI','3122978674','niplesyaccesoriosdecolombia@gmail.com','Cra. 7 #16-12, COMUNA 3'),
('','FERRETERIA VALVULAS INDUSTRIALES','CALI','3128524239','valvulasindustrialesltda@hotmail.com','Cl. 34 #2 C -78, COMUNA 4'),
('','FERRETERIA RINHO','BOGOTA','3204950152','marketing@rhino.com.co / ventas6@rhino.com.co','Cra 25 No. 15-58'),
('','FERRETERIA LUIS PENAGOS','BOGOTA','3203702990','ventas@ferreterialuispenagos.com.co','Cl 17 28-47'),
('','AUTOMATIZACIÓN Y MOTORES INDUSTRIALES SAS','BOGOTA','3132624433','motorindustrial@hotmail.com','Cra. 27 #15 – 57'),
('','IMPORTACIONES AYC','BOGOTA','3142466346','financiera@ayc-ltda.com','Carrera 26 #3-31'),
('','SOLUCIONES TUBULARES','BOGOTA','3165159280','ventasweb@solucionestubulares.com','Calle 15 No.22-67'),
('','HILTI STORE','BOGOTA','6015190001','serviciocliente.co@hilti.com','Calle 17 N°28-50'),
('','PERALTA PERFILERIA','BOGOTA','3156184034','ventasbogota10@peraltaperfileria.com','Calle 13 #68b – 40'),
('','INDUSTRIA DE RESORTES EL CANGURO','BOGOTA','3145645347','inrecanventas@gmail.com','Carrera 69 No 35-42 sur'),
('','MELEXA S.A.S.','BOGOTA','3182405099','mercadeo@melexa.com','Calle 18 No. 69F-26'),
('','GC TECHNOTRADING','BOGOTA','3153173465','ingetecno3581@gmail.com','Avenida Boyacá N° 64F - 14'),
('','TECNI TORREX','BOGOTA','3118739686',null,'CRA 40 SUR No. 68I – 39'),
('','EMBAPACK(EMPAQUE Y EMBALAJE INDUSTRIAL)','CUNDINAMARCA','3004775152','comercial@embapack.com.co','Autopista Medellín KM 11.6'),
('','PROELECTRICOS','BOGOTA','3142944532','info@proelectricos.com','Calle 12 A # 21 - 39'),
('','MEM SAS','BOGOTA','3132082599','mem.web@mem.net.co','Cra. 44 #20c-7'),
('','COMATEL','BOGOTA','3132095328','contactenos@comatel.com.co','Transversal 93 No. 53 - 48 Bodega 32'),
('','REPRESENTACIONES HAM SAS','BOGOTA','3118833335','representaciones.ham@gmail.com','Calle 25F No 85C-76'),
('','SUMMA SUMINISTROS INDUSTRIALES','BOGOTA','3124112793','comercial@summasas.com.cocomercial04@summasas.com.co','Cra 68 D #37 sur - 20'),
('','INDUSTRIAS ASOCIADAS','BOGOTA','311529076','rhumanos@industriasasociadas.com','Carrera 27 No. 13-95');




/*insert para producto*/


insert into Producto  values ('','MALLA ZARANDA GALVANIZADA',1),('','MALLAS EXPANDIDAS',1),('','LAMINAS PERFORADAS',1);
insert into Producto  values ('','GAVON TRIPLE TORSION', 2),('','MALLA TALUD', 2),('','COLCHOGAVIONES', 2);
insert into Producto  values ('','MALLAS', 3),('','GAVIONES', 3),('','CERRAMIENTOS', 3),('','ESTRUCTURAS', 3);
insert into Producto  values ('','IMANES PERMANENTES', 4),('','IMANES CERAMICOS', 4),('','IMANES NEODIMIO', 4),('','LAMINA', 4);
insert into Producto  values ('','PINTURAS Y SELLANTES', 5),('','CANDADOS BICICLETAS', 5),('','CERRADURAS DIGITALES', 5);
insert into Producto  values ('','TUBERIAS', 6),('','VALVULAS DOBLES', 6),('','ACCESORIOS', 6),('','MONTAJES INDUSTRIALES', 6);
insert into Producto  values ('','TABLEROS ESTAMPADOS', 7),('','LAMINAS CR', 7),('','LAMINAS HR', 7),('','LAMINAS GALVANIZADAS', 7);
insert into Producto  values ('','VALVULAS', 8),('','MANOMETROS', 8),('','ELECTRODOS', 8),('','FLACHE', 8),('','TIJERAS', 8);
insert into Producto  values ('','ALQUILER DE ANDAMIOS CERTIFICADOS', 9),('','ALQUILER DE ANDAMIO TUBULAR', 9);
insert into Producto  values ('','RUEDAS INDUSTRIALES', 10),('','CARROS Y CANASTILLAS DE MERCADO', 10),('','CARRETILLAS Y PLATAFORMAS', 10);
insert into Producto  values ('','RUEDAS TRABAJO LIVIANO', 11),('','RUEDAS INDUSTRIALES', 11),('','RODACHINES TRABAJO LIVIANO', 11);
insert into Producto  values ('','ABRAZIVOS', 12),('','DISCOS DE CORTES', 12),('','ACCESORIOS', 12),('','HERRAMIENTAS', 12);
insert into Producto  values ('','QUIMICOS ADHESIVOS Y SELLANTES', 13),('','ABRAZADERAS METALICAS', 13),('','ABRAZADERAS NYLON', 13);
insert into Producto  values ('','ADAPTADOES', 14),('','AICATES', 14),('','ALMADANAS', 14);
insert into Producto  values ('','PULIDORAS', 15),('','DISPOSITIVOS PORTAHERRAMIENTAS', 15),('','UNIDADES FLEXIBLES', 15);
insert into Producto  values ('','NIPLES', 16),('','ACCESORIOS', 16),('','FERRETERIA EN GENERAL', 16);
insert into Producto  values ('','TUBERIAS', 17),('','VALVULAS', 17),('','ACCESORIOS', 17),('','MANGUERAS', 17);
insert into Producto  values ('','SEÑALIZACION INDUSTRIAL', 18),('','HERRAMIENTAS MECANICAS', 18),('','ACCESORIOS', 18);
insert into Producto  values ('','HERRAMIENTAS ELECTRICAS', 19),('','HERRAMIENTAS NEUMATICAS', 19),('','HERRAMIENTAS MANUALES', 19);
insert into Producto  values ('','MOTORES ELECTRICOS MOTORREDUCTORES Y VENTILADOS', 20),('','COTROL INDUSTRIAL', 20);
insert into Producto  values ('','HERRAMIENTAS MANUALES', 21),('','HERRAMIENTAS ELECTRICAS', 21),('','MANOMETROS', 21);
insert into Producto  values ('','ACERO', 22),('','PVC', 22),('','SOLDADURAS Y EQUIPOS', 22),('','VIGAS', 22),('','ANGULOS', 22);
insert into Producto  values ('','HERRAMIENTAS A BATERÍA', 23),('','HERRAMIENTAS ELÉCTRICAS', 23),('','SOFTWARE', 23);
insert into Producto  values ('','SISTEMAS ESTRUCTURALES', 24),('','BANDEJAS PORTACABLE TIPO ESCALERA', 24);
insert into Producto  values ('','RESORTES DE COMPRENSION', 25),('','RESORTES DE EXTENSION', 25),('','RESORTES DE TORSION', 25);
insert into Producto  values ('','ACONDICIONAMIENTO AMBIENTAL Y ENERGÍA - BATERÍAS Y UNIDADES DE DISTRIBUCIÓN', 26),('','AUTOMATIZACIÓN INDUSTRIAL', 26);
insert into Producto  values ('','VON – MEDIDORES Y EQUIPOS PARA ALTA TENSIÓN', 27),('','NEW COSMOS DETECTORES DE FUGAS DE GAS', 27),('','RION – VIBROMETROS', 27);
insert into Producto  values ('','EQUIPOS CONTRA INCENDIOS', 28),('','DOTACIONES INDUSTRIALES', 28),('','TECNICO EN EXTINTORES', 28);
insert into Producto  values ('','CARPINTERIA Y CONSTRUCCION', 29),('','EMBALAJE', 29),('','INSTRUMENTOS MUSICALES', 29);
insert into Producto  values ('','CELDAS Y TABLEROS', 30),('','CONDUIT', 30),('','APARATOS ELECTRICOS', 30),('','COMUNICACIONES', 30);
insert into Producto  values ('','INFRAESTRUCTURA ELECTRICA', 31),('','TOMAS Y CLAVIJAS INDUSTRIALES', 31),('','BLOQUEO E IDENTIFICACION INDUSTRIAL', 31);
insert into Producto  values ('','CABLES', 32),('','COMUNICACIÓN', 32),('','ILUMINACION', 32),('','TUBERIAS', 32);
insert into Producto  values ('','TRATAMIENTO TERMICO', 33),('','EMBALAJES', 33),('','ESTIBAS.', 33);
insert into Producto  values ('','TUBERIA GALVANIZADA', 34),('','TUBERIA ESTRUCTURAL', 34);
insert into Producto  values ('','TRANSMISIONES DE PRESION', 35),('','MANOMETROS', 35),('','SWITCH DE PRESION', 35);



/*insert para empleado*/

insert into Empleado (nomEmpleado, CCEmpleado, estadoEmpleado) values ('Carlos Pérez', 1012345678, 1);
insert into Empleado (nomEmpleado, CCEmpleado, estadoEmpleado) values
('María López', 1012345679, 1),
('Juan Gómez', 1012345680, 0),
('Ana Martínez', 1012345681, 1),
('Pedro García', 1012345682, 0),
('Laura Rodríguez', 1012345683, 1),
('Jorge Ramírez', 1012345684, 1),
('Paula Sánchez', 1012345685, 0),
('José Torres', 1012345686, 1),
('Lucía Mendoza', 1012345687, 1),
('Felipe Muñoz', 1012345688, 0),
('Elena Morales', 1012345689, 1),
('Daniel Herrera', 1012345690, 0),
('Claudia Castro', 1012345691, 1),
('Andrés Ríos', 1012345692, 1),
('Gabriela Pineda', 1012345693, 0),
('Miguel Fernández', 1012345694, 1),
('Sofía Vargas', 1012345695, 1),
('Roberto Suárez', 1012345696, 0),
('Carmen Ortiz', 1012345697, 1),
('Francisco Pardo', 1012345698, 1),
('Isabel Reyes', 1012345699, 0),
('Fernando Acosta', 1012345700, 1),
('Natalia Flores', 1012345701, 0),
('Raúl Gutiérrez', 1012345702, 1),
('Patricia Vega', 1012345703, 1),
('Oscar Guerrero', 1012345704, 0),
('Alejandra Cárdenas', 1012345705, 1),
('Eduardo Maldonado', 1012345706, 1),
('Liliana Aguilar', 1012345707, 0),
('Diego Navarro', 1012345708, 1),
('Monica Escobar', 1012345709, 1),
('Esteban Villalba', 1012345710, 0),
('Verónica Romero', 1012345711, 1),
('Julián Carrillo', 1012345712, 1),
('Andrea Salazar', 1012345713, 0),
('Héctor Medina', 1012345714, 1),
('Valentina Figueroa', 1012345715, 1),
('Iván Parra', 1012345716, 0),
('Yolanda Lara', 1012345717, 1),
('Ricardo Peña', 1012345718, 1),
('Diana Barrios', 1012345719, 0),
('Manuel Campos', 1012345720, 1),
('Rosa Cabrera', 1012345721, 1),
('Alberto Palacios', 1012345722, 0),
('Catalina Naranjo', 1012345723, 1),
('Santiago Gil', 1012345724, 0),
('Rocío Luna', 1012345725, 1),
('Javier Moreno', 1012345726, 1),
 ('Camila Lugo',1012345727,1);



/*Insert para Orden*/

insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-05-12', 5);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2022-07-24', 12);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-03-11', 23);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-08-30', 4);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-01-15', 8);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-11-09', 19);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2022-04-18', 32);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-06-05', 7);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-09-21', 21);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-12-03', 35);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2022-10-14', 44);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-02-09', 29);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-06-22', 15);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-03-13', 38);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-12-27', 9);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2022-08-31', 24);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-02-20', 42);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-04-07', 18);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-03-30', 1);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2022-11-11', 46);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-07-25', 13);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-05-19', 27);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-07-02', 10);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-02-16', 3);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-08-14', 41);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2022-01-06', 33);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-06-10', 17);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-09-08', 2);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-09-30', 36);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-11-16', 48);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2022-05-05', 26);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-12-01', 50);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-10-20', 14);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-10-01', 11);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2022-12-09', 6);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-08-11', 45);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-04-24', 20);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-09-19', 37);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2022-03-22', 47);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-10-05', 31);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-07-29', 25);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-04-13', 39);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2022-06-15', 16);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-05-19', 43);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2023-01-30', 30);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2021-12-12', 22);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2022-09-04', 28);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-11-27', 34);
insert into Orden (fechaOrden, idEmpleadoFK) values ('2024-11-27', 34);

select * from Orden;
/*insert ordenProducto*/ 

describe ordenProducto;

insert into ordenProducto (idOrdenFK, idProductoFK, cantidad) values (14, 3, 15),(25, 12, 10),(14, 8, 20),
(8, 19, 5),(41, 22, 12),(1, 36, 30),(35, 13, 18),(18, 40, 25),(3, 14, 8),(33, 45, 10),(38, 33, 15),(7, 1, 5),(14, 6, 10),(21, 17, 7),(19, 31, 20),
(24, 24, 12),(23, 21, 9),(4, 38, 13),(10, 30, 17),(36, 41, 25),(34, 26, 8),(11, 16, 12),(12, 23, 10),(39, 9, 18),(28, 34, 5),(4, 5, 11),(27, 20, 7),
(20, 10, 15),(9, 29, 20),(17, 37, 25),(22, 15, 12),(2, 39, 10),(13, 18, 8),(32, 25, 15),(5, 11, 18),(42, 7, 5),(30, 27, 12),(14, 2, 14),(8, 4, 22),
(41, 35, 10),(14, 32, 30),(27, 28, 25),(18, 44, 20),(36, 42, 13),(42, 12, 18),(7, 3, 9),(3, 16, 12),(23, 1, 15),(19, 26, 8),(12, 41, 30);

/*CONSULTA BASICA*/

select * from ordenProducto;

/*CONSULTAR ESPECIFICAS*/

/*Consulta de los proveedores con productos que contengan acero*/
select nomProv, contacto, nomProducto as Busqueda from Proveedor left join Producto on nomProducto like '%acero%';

/*Consulta de los empleados que tienen un orden relacionada y esten activos*/
select idEmpleado, nomEmpleado, idOrden from Empleado inner join Orden where Orden.idEmpleadoFK= Empleado.idEmpleado and Empleado.estadoEmpleado = true ;

/*Consulta de los proveedores en Cali*/
select * from Proveedor where ubicación = 'CALI';

/*Ordenamiento de la tabla orden por cantidad menor a mayor*/
select * from ordenProducto order by cantidad asc;

/*Vista para ver los empleado inactivos*/
create view empleadosInactivos as select idEmpleado from Empleado where estadoEmpleado = false;
 
select * from empleadosInactivos;

/*Consulta del Empleado con la mayor cantidad de productos en una orden*/
select idEmpleadoFK, idOrden from Orden where idOrden = (select idOrdenFK from ordenProducto group by idOrdenFK order by max(cantidad) desc limit 1);


/*consulta de una orden en un intervalo de fechas*/
select idOrden, fechaOrden from Orden where fechaOrden between '2021-01-01' and '2022-01-01';



/*MODIFICACIONES*/

/*Cambiar estado de un empleado*/
update Empleado set estadoEmpleado = true where idEmpleado= 19;

/*Cambiar empleado encargado de una orden*/
 update Orden set idEmpleadoFK = 26 where idOrden = 15;
 
/*Agregar correo a un proveedor */
update Proveedor set correo = 'tecnitorrex@gmail.com' where idProveedor = 28;

/*Combinar una orden con otra */
update ordenProducto set idOrdenFK = 33 where idOrdenFK = 14;

/*Cambiar el telefono de un proveedor*/
update Proveedor set contacto = '3215956284' where idProveedor = 2;

/*ELIMINACION*/

delete from Empleado where idEmpleado = 49;
