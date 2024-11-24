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
	precio float not null
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
    precioTotal float not null,
	
	foreign key (idEmpleadoFK) references Empleado(idEmpleado)
);

create table ordenProducto(
	idOrdenFK int,
    idProductoFK int,
    idProveedorFK int,
    cantidad int not null,
    precioProducto float not null,
    
	foreign key (idOrdenFK) references Orden(idOrden),
    foreign key (idProductoFK) references Producto(idProducto),
    foreign key (idProveedorFK) references Proveedor(idProveedor)
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


INSERT INTO Producto VALUES ('', 'MALLA ZARANDA GALVANIZADA', 32455), ('', 'MALLAS EXPANDIDAS', 56342), ('', 'LAMINAS PERFORADAS', 21785);
INSERT INTO Producto VALUES ('', 'GAVON TRIPLE TORSION', 44678), ('', 'MALLA TALUD', 32987), ('', 'COLCHOGAVIONES', 71432);
INSERT INTO Producto VALUES ('', 'MALLAS', 62145), ('', 'GAVIONES', 52314), ('', 'CERRAMIENTOS', 45982), ('', 'ESTRUCTURAS', 27564);
INSERT INTO Producto VALUES ('', 'IMANES PERMANENTES', 56489), ('', 'IMANES CERAMICOS', 21345), ('', 'IMANES NEODIMIO', 67842), ('', 'LAMINA', 42356);
INSERT INTO Producto VALUES ('', 'PINTURAS Y SELLANTES', 37458), ('', 'CANDADOS BICICLETAS', 67342), ('', 'CERRADURAS DIGITALES', 48521);
INSERT INTO Producto VALUES ('', 'TUBERIAS', 58214), ('', 'VALVULAS DOBLES', 17685), ('', 'ACCESORIOS', 72463), ('', 'MONTAJES INDUSTRIALES', 29478);
INSERT INTO Producto VALUES ('', 'TABLEROS ESTAMPADOS', 18572), ('', 'LAMINAS CR', 62435), ('', 'LAMINAS HR', 56314), ('', 'LAMINAS GALVANIZADAS', 48132);
INSERT INTO Producto VALUES ('', 'VALVULAS', 32465), ('', 'MANOMETROS', 43578), ('', 'ELECTRODOS', 68923), ('', 'FLACHE', 57214), ('', 'TIJERAS', 37685);
INSERT INTO Producto VALUES ('', 'ALQUILER DE ANDAMIOS CERTIFICADOS', 49321), ('', 'ALQUILER DE ANDAMIO TUBULAR', 57248);
INSERT INTO Producto VALUES ('', 'RUEDAS INDUSTRIALES', 24513), ('', 'CARROS Y CANASTILLAS DE MERCADO', 69457), ('', 'CARRETILLAS Y PLATAFORMAS', 58214);
INSERT INTO Producto VALUES ('', 'RUEDAS TRABAJO LIVIANO', 42768), ('', 'RUEDAS INDUSTRIALES', 37562), ('', 'RODACHINES TRABAJO LIVIANO', 63154);
INSERT INTO Producto VALUES ('', 'ABRAZIVOS', 38412), ('', 'DISCOS DE CORTES', 57348), ('', 'ACCESORIOS', 46235), ('', 'HERRAMIENTAS', 28412);
INSERT INTO Producto VALUES ('', 'QUIMICOS ADHESIVOS Y SELLANTES', 41934), ('', 'ABRAZADERAS METALICAS', 53821), ('', 'ABRAZADERAS NYLON', 62534);
INSERT INTO Producto VALUES ('', 'ADAPTADOES', 37148), ('', 'AICATES', 49238), ('', 'ALMADANAS', 62175);
INSERT INTO Producto VALUES ('', 'PULIDORAS', 59382), ('', 'DISPOSITIVOS PORTAHERRAMIENTAS', 31245), ('', 'UNIDADES FLEXIBLES', 67234);
INSERT INTO Producto VALUES ('', 'NIPLES', 45934), ('', 'ACCESORIOS', 52534), ('', 'FERRETERIA EN GENERAL', 31265);
INSERT INTO Producto VALUES ('', 'TUBERIAS', 67312), ('', 'VALVULAS', 42564), ('', 'ACCESORIOS', 37452), ('', 'MANGUERAS', 56214);
INSERT INTO Producto VALUES ('', 'SEÑALIZACION INDUSTRIAL', 47214), ('', 'HERRAMIENTAS MECANICAS', 62134), ('', 'ACCESORIOS', 28345);
INSERT INTO Producto VALUES ('', 'HERRAMIENTAS ELECTRICAS', 51672), ('', 'HERRAMIENTAS NEUMATICAS', 48213), ('', 'HERRAMIENTAS MANUALES', 69324);
INSERT INTO Producto VALUES ('', 'MOTORES ELECTRICOS MOTORREDUCTORES Y VENTILADOS', 57162), ('', 'COTROL INDUSTRIAL', 38642);
INSERT INTO Producto VALUES ('', 'HERRAMIENTAS MANUALES', 62175), ('', 'HERRAMIENTAS ELECTRICAS', 32486), ('', 'MANOMETROS', 47563);
INSERT INTO Producto VALUES ('', 'ACERO', 71234), ('', 'PVC', 32645), ('', 'SOLDADURAS Y EQUIPOS', 48135), ('', 'VIGAS', 57321), ('', 'ANGULOS', 39872);
INSERT INTO Producto VALUES ('', 'HERRAMIENTAS A BATERÍA', 61452), ('', 'HERRAMIENTAS ELÉCTRICAS', 38512), ('', 'SOFTWARE', 45321);
INSERT INTO Producto VALUES ('', 'SISTEMAS ESTRUCTURALES', 52831), ('', 'BANDEJAS PORTACABLE TIPO ESCALERA', 61324);
INSERT INTO Producto VALUES ('', 'RESORTES DE COMPRENSION', 38562), ('', 'RESORTES DE EXTENSION', 62435), ('', 'RESORTES DE TORSION', 57341);
INSERT INTO Producto VALUES ('', 'ACONDICIONAMIENTO AMBIENTAL Y ENERGÍA - BATERÍAS Y UNIDADES DE DISTRIBUCIÓN', 49285), ('', 'AUTOMATIZACIÓN INDUSTRIAL', 61472);
INSERT INTO Producto VALUES ('', 'VON – MEDIDORES Y EQUIPOS PARA ALTA TENSIÓN', 48325), ('', 'NEW COSMOS DETECTORES DE FUGAS DE GAS', 57231), ('', 'RION – VIBROMETROS', 62518);
INSERT INTO Producto VALUES ('', 'EQUIPOS CONTRA INCENDIOS', 28475), ('', 'DOTACIONES INDUSTRIALES', 57234), ('', 'TECNICO EN EXTINTORES', 48975);
INSERT INTO Producto VALUES ('', 'CARPINTERIA Y CONSTRUCCION', 31265), ('', 'EMBALAJE', 47231), ('', 'INSTRUMENTOS MUSICALES', 63254);
INSERT INTO Producto VALUES ('', 'CELDAS Y TABLEROS', 62138), ('', 'CONDUIT', 38425), ('', 'APARATOS ELECTRICOS', 51274), ('', 'COMUNICACIONES', 61324);
INSERT INTO Producto VALUES ('', 'INFRAESTRUCTURA ELECTRICA', 39485), ('', 'TOMAS Y CLAVIJAS INDUSTRIALES', 57245), ('', 'BLOQUEO E IDENTIFICACION INDUSTRIAL', 62548);
INSERT INTO Producto VALUES ('', 'CABLES', 48931), ('', 'COMUNICACIÓN', 39482), ('', 'ILUMINACION', 56342), ('', 'TUBERIAS', 48214);
INSERT INTO Producto VALUES ('', 'TRATAMIENTO TERMICO', 41285), ('', 'EMBALAJES', 56312), ('', 'ESTIBAS.', 49324);
INSERT INTO Producto VALUES ('', 'TUBERIA GALVANIZADA', 47214), ('', 'TUBERIA ESTRUCTURAL', 53248);
INSERT INTO Producto VALUES ('', 'TRANSMISIONES DE PRESION', 51426), ('', 'MANOMETROS', 38412), ('', 'SWITCH DE PRESION', 62534);




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

insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-05-12', 5, 54321);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2022-07-24', 12, 87432);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-03-11', 23, 23985);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-08-30', 4, 61542);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-01-15', 8, 49821);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-11-09', 19, 73451);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2022-04-18', 32, 19842);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-06-05', 7, 85231);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-09-21', 21, 42983);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-12-03', 35, 65742);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2022-10-14', 44, 73128);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-02-09', 29, 19425);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-06-22', 15, 57412);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-03-13', 38, 62358);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-12-27', 9, 45128);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2022-08-31', 24, 78321);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-02-20', 42, 59231);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-04-07', 18, 82731);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-03-30', 1, 19384);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2022-11-11', 46, 67429);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-07-25', 13, 85291);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-05-19', 27, 37142);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-07-02', 10, 24931);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-02-16', 3, 91284);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-08-14', 41, 45231);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2022-01-06', 33, 17384);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-06-10', 17, 84127);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-09-08', 2, 29485);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-09-30', 36, 67431);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-11-16', 48, 73821);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2022-05-05', 26, 53284);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-12-01', 50, 98214);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-10-20', 14, 54231);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-10-01', 11, 81247);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2022-12-09', 6, 27183);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-08-11', 45, 95431);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-04-24', 20, 38271);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-09-19', 37, 17384);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2022-03-22', 47, 61428);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-10-05', 31, 29138);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-07-29', 25, 83429);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-04-13', 39, 19483);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2022-06-15', 16, 75821);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-05-19', 43, 29384);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2023-01-30', 30, 84732);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2021-12-12', 22, 61839);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2022-09-04', 28, 37418);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-11-27', 34, 27149);
insert into orden (fechaOrden, idEmpleadoFK, precioTotal) values ('2024-11-27', 34, 84921);


select * from ordenProducto;


/*insert ordenProducto*/ 

describe ordenProducto;

insert into ordenProducto (idOrdenFK, idProductoFK, idProveedorFK, cantidad, precioProducto) values 
(14, 3, 12, 15, 45321),(25, 12, 8, 10, 64329),(14, 8, 26, 20, 37219),(8, 19, 14, 5, 58214),(41, 22, 5, 12, 49185),(1, 36, 30, 30, 61432),(35, 13, 9, 18, 29571),(18, 40, 22, 25, 52816),
(3, 14, 18, 8, 30194),(33, 45, 4, 10, 65742),(38, 33, 19, 15, 51429),(7, 1, 25, 5, 32784),(14, 6, 35, 10, 42816),(21, 17, 2, 7, 59214),(19, 31, 16, 20, 67352),(24, 24, 1, 12, 48219),
(23, 21, 13, 9, 35210),(4, 38, 7, 13, 59432),(10, 30, 11, 17, 41982),(36, 41, 23, 25, 67214),(34, 26, 3, 8, 58217),(11, 16, 28, 12, 37291),(12, 23, 21, 10, 49213),(39, 9, 27, 18, 52847),
(28, 34, 17, 5, 60123),(4, 5, 6, 11, 31542),(27, 20, 33, 7, 49182),(20, 10, 20, 15, 57832),(9, 29, 10, 20, 62143),(17, 37, 32, 25, 68432),(22, 15, 24, 12, 38942),(2, 39, 15, 10, 45281),
(13, 18, 34, 8, 52749),(32, 25, 31, 15, 67132),(5, 11, 12, 18, 49831),(42, 7, 29, 5, 61523),(30, 27, 8, 12, 38274),(14, 2, 35, 14, 47192),(8, 4, 30, 22, 68914),(41, 35, 21, 10, 50239),
(14, 32, 25, 30, 53142),(27, 28, 19, 25, 48912),(18, 44, 13, 20, 42185),(36, 42, 17, 13, 61239),(42, 12, 28, 18, 58471),(7, 3, 5, 9, 45738),(3, 16, 24, 12, 39412),(23, 1, 9, 15, 60129),
(19, 26, 12, 8, 52984),(12, 41, 14, 30, 62184);



/*CONSULTA BASICA*/

select * from Proveedor;

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



/* RQM CLASE PRODUCTO */
SELECT * FROM Producto ORDER BY precio DESC;
SELECT * FROM Producto ORDER BY precio ASC;
SELECT * FROM Producto ORDER BY nomProducto DESC;
SELECT * FROM Producto ORDER BY nomProducto ASC;
UPDATE Producto SET nomProducto = 'Acero Galvanizado' WHERE id = 12;
UPDATE Producto SET precio = 50000 WHERE id = 12;
SELECT * FROM Producto WHERE id = 12;

/* RQM CLASE PROVEEDOR*/
UPDATE Proveedores SET nomProv = 'Don Aceros' WHERE id = 3;
UPDATE Proveedores SET direccion = 'Cll 8 bis A' WHERE id = 3;
UPDATE Proveedores SET ubicacion = 'MEDELLIN' WHERE id = 5;
UPDATE Proveedores SET contacto = '3214459100' WHERE id = 5;
UPDATE Proveedores SET correo = 'jesus.example@urosario.com' WHERE id = 7;
SELECT * FROM Proveedores WHERE ubicacion = 'MEDELLIN';
SELECT * FROM Proveedores ORDER BY nomProv ASC;
SELECT * FROM Proveedores ORDER BY nomProv DESC;
SELECT * FROM Proveedores ORDER BY contacto ASC;
SELECT * FROM Proveedores ORDER BY contacto DESC;
SELECT * FROM Proveedores ORDER BY correo ASC;
SELECT * FROM Proveedores ORDER BY correo DESC;
SELECT * FROM Proveedores WHERE id = 3;

/* RQM CLASE EMPLEADOS*/
SELECT * FROM Empleado WHERE estadoEmpleado = TRUE;
SELECT * FROM Empleado WHERE estadoEmpleado = FALSE;
SELECT * FROM Empleado ORDER BY CCEmpleado DESC;
SELECT * FROM Empleado ORDER BY CCEmpleado ASC;
SELECT * FROM Empleado ORDER BY nomEmpleado DESC;
SELECT * FROM Empleado ORDER BY nomEmpleado ASC;
SELECT * FROM Empleado WHERE id = 15;

/* RQF CLASE ORDEN*/
UPDATE Orden SET fechaOrden = '2024-11-24' WHERE id = 20;
SELECT * FROM Orden ORDER BY precioTotal ASC;
SELECT * FROM Orden ORDER BY precioTotal DESC;
SELECT * FROM Orden ORDER BY fechaOrden ASC;
SELECT * FROM Orden ORDER BY fechaOrden DESC;
SELECT * FROM Orden WHERE fechaOrden BETWEEN '2024-11-20' AND '2024-11-24';
SELECT * FROM Orden WHERE id = 20;
