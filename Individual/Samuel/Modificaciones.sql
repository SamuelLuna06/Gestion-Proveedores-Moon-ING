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
