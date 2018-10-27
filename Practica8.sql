use LocalTecno

CREATE TRIGGER GenerarClienteProspecto ON Cotizacion
FOR INSERT
AS
BEGIN
	INSERT INTO [dbo].[cliente_Prospecto] (Descripcion, Nombre, Apellido_Paterno, Id_telefono) VALUES ('Cliente Generico', 'Cliente Generico', 'Cliente Generico', 9)
END;

INSERT INTO [dbo].[Cotizacion] values ('Venta', 2, 5, 1, 5000)

CREATE TABLE Bitacore (
	idBitacore int not null PRIMARY KEY IDENTITY(1,1),
	Descripcion text not null,
)

CREATE TRIGGER GenerarBitacore ON Empleado
AFTER DELETE
AS
BEGIN 
	INSERT INTO [dbo].[Bitacore] (Descripcion) VALUES ('Se ah Borrado un registro')
END;

DELETE FROM Empleado WHERE Numero_de_empleado = 6;

CREATE TRIGGER AlertaCambio ON Empleado
INSTEAD OF UPDATE
AS
BEGIN
	SELECT 'No se puede alterar dato!'
END;

UPDATE [dbo].[Empleado] SET Nombre = 'Dato sospechoso' WHERE Numero_de_empleado = 7;