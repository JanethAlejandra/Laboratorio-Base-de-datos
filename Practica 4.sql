use LocalTecno

--Inserts a Tabla Direccion
INSERT INTO Direccion (Colonia, Municipio, Estado, Codigo_Postal, Pais) VALUES ('Los fresnos','Apodaca','Nuevo Leon', 66636, 'Mexico');
INSERT INTO Direccion (Colonia, Municipio, Estado, Codigo_Postal, Pais) VALUES ('Los pinos','Apodaca','Nuevo Leon', 66656, 'Mexico');
INSERT INTO Direccion (Colonia, Municipio, Estado, Codigo_Postal, Pais) VALUES ('Los girasoles','Escobedo','Nuevo Leon', 66645, 'Mexico');
INSERT INTO Direccion (Colonia, Municipio, Estado, Codigo_Postal, Pais) VALUES ('Los evanos','San Nicolas','Nuevo Leon', 6656, 'Mexico');
INSERT INTO Direccion (Colonia, Municipio, Estado, Codigo_Postal, Pais) VALUES ('Magnolias','Monterrey','Nuevo Leon', 66457, 'Mexico');
INSERT INTO Direccion (Colonia, Municipio, Estado, Codigo_Postal, Pais) VALUES ('Manantial','Guadalupe','Nuevo Leon', 66698, 'Mexico');
INSERT INTO Direccion (Colonia, Municipio, Estado, Codigo_Postal, Pais) VALUES ('La enramada','Santa Catarina','Nuevo Leon', 66676, 'Mexico');
INSERT INTO Direccion (Colonia, Municipio, Estado, Codigo_Postal, Pais) VALUES ('Anchon del huajuco','San Pedro','Nuevo Leon', 66569, 'Mexico');

--Inserts a Tabla Telefono
INSERT INTO Telefono (Telefono_1, Telefono_2) VALUES (81209876, NULL);
INSERT INTO Telefono (Telefono_1, Telefono_2) VALUES (12345678, NULL);
INSERT INTO Telefono (Telefono_1, Telefono_2) VALUES (23456789, 83097937);
INSERT INTO Telefono (Telefono_1, Telefono_2) VALUES (98765432, NULL);
INSERT INTO Telefono (Telefono_1, Telefono_2) VALUES (83146809, 83045917);
INSERT INTO Telefono (Telefono_1, Telefono_2) VALUES (83097917, NULL);
INSERT INTO Telefono (Telefono_1, Telefono_2) VALUES (55789430, NULL);
INSERT INTO Telefono (Telefono_1, Telefono_2) VALUES (2546739, NULL);

--Inserts a Tabla Fecha
INSERT INTO Fecha (Dia, Mes, Anio) VALUES (15, 03, 2018);
INSERT INTO Fecha (Dia, Mes, Anio) VALUES (06, 06, 1999);
INSERT INTO Fecha (Dia, Mes, Anio) VALUES (29, 08, 1998);
INSERT INTO Fecha (Dia, Mes, Anio) VALUES (30, 07, 2014);
INSERT INTO Fecha (Dia, Mes, Anio) VALUES (04, 03, 2001);
INSERT INTO Fecha (Dia, Mes, Anio) VALUES (27, 12, 1993);
INSERT INTO Fecha (Dia, Mes, Anio) VALUES (12, 01, 1987);
INSERT INTO Fecha (Dia, Mes, Anio) VALUES (19, 09, 1976);

--Inserts a Cliente Prospecto

INSERT INTO Cliente_Prospecto (Descripcion, Nombre, Apellido_Paterno, Id_telefono) VALUES (NULL, 'Janeth', 'Pacheco', 1);
INSERT INTO Cliente_Prospecto (Descripcion, Nombre, Apellido_Paterno, Id_telefono) VALUES (NULL, 'Alejandra', 'Coronado', 6);
INSERT INTO Cliente_Prospecto (Descripcion, Nombre, Apellido_Paterno, Id_telefono) VALUES (NULL, 'Juan', 'Ramirez', 5);
INSERT INTO Cliente_Prospecto (Descripcion, Nombre, Apellido_Paterno, Id_telefono) VALUES (NULL, 'Gustavo', 'Martinez', 4);
INSERT INTO Cliente_Prospecto (Descripcion, Nombre, Apellido_Paterno, Id_telefono) VALUES (NULL, 'Jean', 'Balderas', 2);
INSERT INTO Cliente_Prospecto (Descripcion, Nombre, Apellido_Paterno, Id_telefono) VALUES (NULL, 'Carlos', 'Contreras', 8);
INSERT INTO Cliente_Prospecto (Descripcion, Nombre, Apellido_Paterno, Id_telefono) VALUES (NULL, 'Brenda', 'Bonilla', 7);
INSERT INTO Cliente_Prospecto (Descripcion, Nombre, Apellido_Paterno, Id_telefono) VALUES (NULL, 'Samantha', 'Prez', 3);

--Inserts a Cliente

INSERT INTO Cliente (Nombre, Apellido_Paterno, Apellido_Materno, Id_Fecha, Id_telefono, Calle, Numero, Id_direccion)
VALUES ('Luis', 'Casas','Osuna', 1,3, 'Orquidea', 504, 5);
INSERT INTO Cliente (Nombre, Apellido_Paterno, Apellido_Materno, Id_Fecha, Id_telefono, Calle, Numero, Id_direccion)
VALUES ('Daniel', 'Alvarez','Martinez', 2,4, 'Jacintos', 570, 4);
INSERT INTO Cliente (Nombre, Apellido_Paterno, Apellido_Materno, Id_Fecha, Id_telefono, Calle, Numero, Id_direccion)
VALUES ('Dilan', 'Guzman','Rodriguez', 3,5, 'Cruz Egipcia', 1009, 6);
INSERT INTO Cliente (Nombre, Apellido_Paterno, Apellido_Materno, Id_Fecha, Id_telefono, Calle, Numero, Id_direccion)
VALUES ('David', 'Pintado','Valdez', 4,7, 'Olivos', 453, 3);
INSERT INTO Cliente (Nombre, Apellido_Paterno, Apellido_Materno, Id_Fecha, Id_telefono, Calle, Numero, Id_direccion)
VALUES ('Daniela', 'Ortiz','Gomez', 5,6, 'Olmeca', 109, 7);
INSERT INTO Cliente (Nombre, Apellido_Paterno, Apellido_Materno, Id_Fecha, Id_telefono, Calle, Numero, Id_direccion)
VALUES ('Martha', 'Plata','Godinez', 6,8, 'Panama', 436, 8);
INSERT INTO Cliente (Nombre, Apellido_Paterno, Apellido_Materno, Id_Fecha, Id_telefono, Calle, Numero, Id_direccion)
VALUES ('Alondra', 'Cazares','Torres', 7,2, 'Flor de durazno', 200,1);
INSERT INTO Cliente (Nombre, Apellido_Paterno, Apellido_Materno, Id_Fecha, Id_telefono, Calle, Numero, Id_direccion)
VALUES ('Dulce', 'Rincon','Hernandez', 8,1, 'Rosas', 1987, 2);

--Inserts a Producto

INSERT INTO Producto (Nombre, Descripcion, Precio, Descuento) VALUES('Moto g4', 'Celular', 4500.0, NULL);
INSERT INTO Producto (Nombre, Descripcion, Precio, Descuento) VALUES('Moto g5', 'Celular', 5500.0, NULL);
INSERT INTO Producto (Nombre, Descripcion, Precio, Descuento) VALUES('Moto g6', 'Celular', 7550.0, NULL);
INSERT INTO Producto (Nombre, Descripcion, Precio, Descuento) VALUES('Samsung 40"', 'Pantalla', 10000.0, NULL);
INSERT INTO Producto (Nombre, Descripcion, Precio, Descuento) VALUES('LG 50"', 'Pantalla', 12500.0, NULL);
INSERT INTO Producto (Nombre, Descripcion, Precio, Descuento) VALUES('Dell Core i5', 'Laptop', 8700.0, NULL);
INSERT INTO Producto (Nombre, Descripcion, Precio, Descuento) VALUES('Lenovo 2X', 'Tablet', 4500.65, NULL);
INSERT INTO Producto (Nombre, Descripcion, Precio, Descuento) VALUES('TechZone 2.4G', 'Mouse', 50.29, NULL);


--Inserts a Proveedor

INSERT INTO Proveedor (Id_telefono, Nombre, Pagina_Web, Calle, Numero, Id_direccion)
VALUES (1, 'Tecno', 'www.tecno.com.mx', 'Del rio', NULL, 2);
INSERT INTO Proveedor (Id_telefono, Nombre, Pagina_Web, Calle, Numero, Id_direccion)
VALUES (2, 'Syscom', 'www.Syscom.com.mx', 'Arrboledas', 354, 1);
INSERT INTO Proveedor (Id_telefono, Nombre, Pagina_Web, Calle, Numero, Id_direccion)
VALUES (3, 'Grupo_Dice', 'www.Grupo_Dice.com.mx', 'Pino', 112, 3);
INSERT INTO Proveedor (Id_telefono, Nombre, Pagina_Web, Calle, Numero, Id_direccion)
VALUES (4, 'Ingram', 'www.Ingram.com', 'Girasol', NULL, 4);
INSERT INTO Proveedor (Id_telefono, Nombre, Pagina_Web, Calle, Numero, Id_direccion)
VALUES (5, 'Sotecti', 'www.Sotecti.mx', 'Cruz Griega', 1008, 5);
INSERT INTO Proveedor (Id_telefono, Nombre, Pagina_Web, Calle, Numero, Id_direccion)
VALUES (6, 'Avaya', 'www.Avaya.mx', 'Pino Suarez', 342, 6);
INSERT INTO Proveedor (Id_telefono, Nombre, Pagina_Web, Calle, Numero, Id_direccion)
VALUES (7, 'TI', NULL, 'Arramberi', 102, 7);
INSERT INTO Proveedor (Id_telefono, Nombre, Pagina_Web, Calle, Numero, Id_direccion)
VALUES (8, 'Patito', NULL, 'Cuauhtemoc', 123, 8);

--Inserts a Cotizacion
INSERT INTO Cotizacion (Tipo, Id_fecha, Id_producto, Cantidad,  Monto_final) VALUES ('Venta', 1, 1, 2, 9000.0);
INSERT INTO Cotizacion (Tipo, Id_fecha, Id_producto, Cantidad,  Monto_final) VALUES ('Venta', 2, 2, 1, 5500.0);
INSERT INTO Cotizacion (Tipo, Id_fecha, Id_producto, Cantidad,  Monto_final) VALUES ('Reparacion',8, 3, 1,7550.0);
INSERT INTO Cotizacion (Tipo, Id_fecha, Id_producto, Cantidad,  Monto_final) VALUES ('Venta', 3, 4, 1,  10000.0);
INSERT INTO Cotizacion (Tipo, Id_fecha, Id_producto, Cantidad,  Monto_final) VALUES ('Venta', 4, 5, 1, 12500.0);
INSERT INTO Cotizacion (Tipo, Id_fecha, Id_producto, Cantidad,  Monto_final) VALUES ('Reparacion', 5, 6, 1, 8700.0);
INSERT INTO Cotizacion (Tipo, Id_fecha, Id_Producto, Cantidad,  Monto_final) VALUES ('Venta', 6, 7, 1, 4500.65);
INSERT INTO Cotizacion (Tipo, Id_fecha, Id_Producto, Cantidad,  Monto_final) VALUES ('Venta', 7, 8, 1, 50.29);

--Inserts a Empleado
INSERT INTO Empleado (Nombre, Apellido_Paterno, Apellido_Materno, Edad, Sexo, Calle, Numero, Id_direccion, Id_telefono)
VALUES ('Andrea', 'Martinez', 'Gonzalez', 19, 'F', 'Olivos', 134, 1,1);
INSERT INTO Empleado (Nombre, Apellido_Paterno, Apellido_Materno, Edad, Sexo, Calle, Numero, Id_direccion, Id_telefono)
VALUES ('Andres', 'Ramirez', 'Torres', 23, 'M', 'Olmo', 697, 2,2);
INSERT INTO Empleado (Nombre, Apellido_Paterno, Apellido_Materno, Edad, Sexo, Calle, Numero, Id_direccion, Id_telefono)
VALUES ('David', 'Barron', 'Pacheco', 18, 'M', 'Flor', 987, 3,3);
INSERT INTO Empleado (Nombre, Apellido_Paterno, Apellido_Materno, Edad, Sexo, Calle, Numero, Id_direccion, Id_telefono)
VALUES ('Daniel', 'Bonilla', 'Ponce', 26, 'M', 'Rio', 234, 4,4);
INSERT INTO Empleado (Nombre, Apellido_Paterno, Apellido_Materno, Edad, Sexo, Calle, Numero, Id_direccion, Id_telefono)
VALUES ('Diego', 'Garza', 'Tristan', 23, 'M', 'Camino', 509, 5,5);
INSERT INTO Empleado (Nombre, Apellido_Paterno, Apellido_Materno, Edad, Sexo, Calle, Numero, Id_direccion, Id_telefono)
VALUES ('Joshban', 'Gutierrez', 'Gonzalez', 24, 'M', 'Cartagena', 708,6,6);
INSERT INTO Empleado (Nombre, Apellido_Paterno, Apellido_Materno, Edad, Sexo, Calle, Numero, Id_direccion, Id_telefono)
VALUES ('Saul', 'Mancha', 'Mancha', 20, 'M', 'Concordia', 1384, 7,7);
INSERT INTO Empleado (Nombre, Apellido_Paterno, Apellido_Materno, Edad, Sexo, Calle, Numero, Id_direccion, Id_telefono)
VALUES ('Maria', 'Lopez', 'Guzman', 21, 'F', 'Luz', 609, 8,8);

--Inserts a Inventario

INSERT INTO Inventario (Id_fecha, Id_producto, Cantidad_Unidad, Cantidad_Paquete, Cantidad_Caja)
VALUES (1,1,0,1,1);
INSERT INTO Inventario (Id_fecha, Id_producto, Cantidad_Unidad, Cantidad_Paquete, Cantidad_Caja)
VALUES (2,2,1,2,1);
INSERT INTO Inventario (Id_fecha, Id_producto, Cantidad_Unidad, Cantidad_Paquete, Cantidad_Caja)
VALUES (3,3,13,0,0);
INSERT INTO Inventario (Id_fecha, Id_producto, Cantidad_Unidad, Cantidad_Paquete, Cantidad_Caja)
VALUES (4,4,10,3,0);
INSERT INTO Inventario (Id_fecha, Id_producto, Cantidad_Unidad, Cantidad_Paquete, Cantidad_Caja)
VALUES (5,5,3,1,0);
INSERT INTO Inventario (Id_fecha, Id_producto, Cantidad_Unidad, Cantidad_Paquete, Cantidad_Caja)
VALUES (6,6,1,0,0);
INSERT INTO Inventario (Id_fecha, Id_producto, Cantidad_Unidad, Cantidad_Paquete, Cantidad_Caja)
VALUES (7,7,0,0,0);
INSERT INTO Inventario (Id_fecha, Id_producto, Cantidad_Unidad, Cantidad_Paquete, Cantidad_Caja)
VALUES (8,8,23,0,1);

--UPDATE a Tabla Producto
UPDATE Producto SET Nombre = 'Logitech', Descripcion = 'Teclado', Precio = 320.0, Descuento = NULL where Id_Producto = 1; 
UPDATE Producto SET Nombre = 'Mac', Descripcion = 'Laptop', Precio = 2320.0, Descuento = NULL where Id_Producto = 2; 
UPDATE Producto SET Nombre = 'HP', Descripcion = 'Teclado', Precio = 520.0, Descuento = NULL where Id_Producto = 5; 
UPDATE Producto SET Nombre = 'Adata', Descripcion = 'Memoria', Precio = 160.0, Descuento = NULL where Id_Producto = 4; 
UPDATE Producto SET Nombre = 'Jabra', Descripcion = 'Audifonos', Precio = 3320.0, Descuento = NULL where Id_Producto = 6; 


--UPDATE a Tabla Telefono
UPDATE Telefono SET Telefono_1 = 89087594, Telefono_2 = 98276301 where Id_telefono = 1; 
UPDATE Telefono SET Telefono_1 = 89425986, Telefono_2 = NULL where Id_telefono = 4; 
UPDATE Telefono SET Telefono_1 = 13425678, Telefono_2 = NULL where Id_telefono = 3; 
UPDATE Telefono SET Telefono_1 = 56434567, Telefono_2 = 91235431 where Id_telefono = 8; 
UPDATE Telefono SET Telefono_1 = 87609876, Telefono_2 = 87689364 where Id_telefono = 6; 

-- UPDATE a tabla Fecha

UPDATE Fecha SET Dia = 12, Mes = 09, Anio = 1990 where Id_Fecha = 2;
UPDATE Fecha SET Dia = 09, Mes = 08, Anio = 1998 where Id_Fecha = 3;
UPDATE Fecha SET Dia = 10, Mes = 01, Anio = 1999 where Id_Fecha = 4;
UPDATE Fecha SET Dia = 31, Mes = 12, Anio = 1991 where Id_Fecha = 8;
UPDATE Fecha SET Dia = 21, Mes = 11, Anio = 1992 where Id_Fecha = 1;

--Delete a tabla Producto 
DELETE FROM Cotizacion WHERE Id_Cotizacion = 26;
DELETE FROM Inventario WHERE Id_Inventario = 25;
DELETE FROM Producto WHERE Id_Producto = 1;
DELETE FROM Cotizacion WHERE Id_Cotizacion = 2;
DELETE FROM Inventario WHERE Id_Inventario = 5;

--Delete a tabla Producto 
DELETE FROM Empleado WHERE Numero_de_empleado = 2;
DELETE FROM Empleado WHERE Numero_de_empleado = 1;
DELETE FROM Empleado WHERE Numero_de_empleado = 3;
DELETE FROM Empleado WHERE Numero_de_empleado = 4;
DELETE FROM Empleado WHERE Numero_de_empleado = 5;

--Delete a tabla Producto 
DELETE FROM Proveedor WHERE Id_Proveedor = 2;
DELETE FROM Proveedor WHERE Id_Proveedor = 1;
DELETE FROM Proveedor WHERE Id_Proveedor = 3;
DELETE FROM Proveedor WHERE Id_Proveedor = 4;
DELETE FROM Proveedor WHERE Id_Proveedor = 5;



