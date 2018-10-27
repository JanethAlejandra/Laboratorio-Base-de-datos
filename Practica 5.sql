use LocalTecno

SELECT CONCAT (Nombre, ' ', Descripcion, ' ', Precio) AS [ProductoCompleto] from Producto;
SELECT CONCAT (Nombre, ' ', Apellido_Paterno, ' ' , Apellido_Materno) AS [NombreCompleto] from empleado;
SELECT LEN (Nombre) AS [Name] from Empleado;
SELECT Nombre AS [IdentificacionCliente] from Cliente;
SELECT SUM(Precio) AS [PrecioTotal]  from Producto;

SELECT Producto.Nombre, Cotizacion.Tipo FROM Producto INNER JOIN Cotizacion ON  Producto.Id_producto = Cotizacion.Id_producto;
SELECT Inventario.Id_Fecha, Inventario.Id_Inventario, Inventario.Id_producto FROM Inventario LEFT JOIN Producto ON Inventario.Id_producto = Producto.Id_producto;
SELECT Producto.Descripcion, Inventario.Id_producto FROM Producto RIGHT JOIN Inventario ON Producto.Id_producto = Inventario.Id_producto;
SELECT Producto.Nombre, Inventario.Id_inventario FROM Producto FULL OUTER JOIN Inventario ON Producto.Id_producto = Inventario.Id_producto;

SELECT Nombre, Descripcion FROM Producto WHERE Id_producto <= 4 ORDER BY Nombre;
SELECT Nombre, Pagina_Web  FROM Proveedor WHERE Id_Proveedor >= 6 ORDER BY Nombre desc;
SELECT Nombre, Edad FROM Empleado WHERE Numero_de_empleado >= 8 ORDER BY Nombre ASC;
SELECT Tipo, Cantidad FROM Cotizacion WHERE Id_cotizacion >11 and Id_cotizacion <15 ORDER BY Tipo;
SELECT Nombre, Precio FROM Producto WHERE Id_producto <= 4 ORDER BY Nombre;

SELECT MIN(Precio) FROM Producto;
SELECT MAX(Monto_Final) AS [Monto Alto] FROM Cotizacion; 
SELECT COUNT(Numero_de_empleado) AS TOTAL, Nombre FROM Empleado GROUP BY Nombre;
SELECT COUNT(Precio) AS TOTAL FROM Producto;
SELECT SUM(Numero_de_empleado) AS TOTAL, Nombre FROM Empleado GROUP BY Nombre;

SELECT * INTO Inventario2 FROM Inventario;
