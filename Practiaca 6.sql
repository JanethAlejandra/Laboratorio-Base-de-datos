use LocalTecno

SELECT * FROM (
	SELECT(Nombre +' '+ Apellido_Paterno +' '+ Apellido_Materno) AS [Nombre Completo], Id_fecha FROM Cliente
) AS DatF WHERE DatF.Id_fecha = 4;

SELECT * FROM (
	SELECT Nombre,Id_telefono FROM Cliente
) AS [Tabla Nueva] WHERE [Tabla Nueva].Id_telefono = 4;

SELECT * FROM(
	SELECT Nombre,Id_telefono FROM Cliente
) AS [Total] WHERE [Total].Id_telefono>4;

WITH Nombre_Total AS (
	SELECT (Nombre + ' ' + Apellido_Paterno + ' ' + Apellido_Materno) AS [Nombre_Total] FROM Empleado
) SELECT * FROM Nombre_Total WHERE Nombre_Total.[Nombre_Total] IS NOT NULL;

Create VIEW HOLA AS (
	SELECT CONCAT (Nombre, ' ', Descripcion, ' ', Precio) AS [ProductoCompleto] from Producto
);

SELECT * FROM HOLA;

CREATE VIEW MONO AS(
	SELECT Producto.Nombre, Cotizacion.Tipo FROM Producto INNER JOIN Cotizacion ON Producto.Id_producto = Cotizacion.Id_producto
);
SELECT * FROM MONO;

CREATE VIEW MANO AS(
	SELECT SUM(Numero_de_empleado) AS TOTAL, Nombre FROM Empleado GROUP BY Nombre
);
SELECT * FROM MANO;


CREATE VIEW RANA AS(
SELECT LEN (Nombre) AS [Name] from Empleado
);
SELECT * FROM RANA;

CREATE VIEW PC AS(
	SELECT Inventario.Id_Fecha, Inventario.Id_Inventario, Inventario.Id_producto FROM Inventario LEFT JOIN Producto ON Inventario.Id_producto = Producto.Id_producto
);
SELECT * FROM PC;

DECLARE @query nvarchar (MAX)
SET @query = 'DROP TABLE Inventario2'

EXEC (@query)

