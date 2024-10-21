/*
TRIGGERS:
	Conjunto de instrucciones sql que generan una acción, suceden como respuesta a un evento.
SINTAXIS:
	create trigger nombre_del_trigger
    {before/after}{insert/select/update/delete}
    on nombre_tabla
    for each row
    begin
    --proceso
    end;
    
    Variables old y new (acceder a registro).
    New: Se refiere al nuevo valor que se va a insertar o modificar.
    Old: Se refiere al valora anterior.alter
    
    Ejemplo:
	1.
		Delimeter $$
		create trigger validar_precio
        after insert on producto
        for each row
			begin
				if new.precio < 0 then
					signal sqlstate '45000'
					set message_text = 'El precio es incorrecto.';
				end if;
			end;
		$$
        Delimiter;
	2.
		Delimeter $$
        create trigger registrar_cambio
        after update on empleado
        for each row
			begin
				insert into historial_cambios values(old.id, old.nombre, new.nombre, now())
			end;
        $$
        Delimiter;
	3.
		Delimeter $$
		create trigger actualizar_inventario
        before insert on venta
        for each row
			begin
				update inventario
				set cantidad = cantidad - new.cantidad_vendida
				where idProducto = new.idProducto
			end;
        $$
        Delimiter;
	4. 
		Delimeter $$
		create trigger registro_papelera
        before delete on proveedor
        for each row
			begin
				insert into proveedores_eliminados values (old.idProveedor, old.nombre_proveedor, old.telefono_proveedor, now())
			end;
        $$
        Delimiter;
*/