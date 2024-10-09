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
