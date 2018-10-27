use LocalTecno

CREATE PROCEDURE AgregarCliente(
@nombre nvarchar (100),
@apellidoPat nvarchar (100),
@apellidoMat nvarchar (100),
@idfecha int,
@idtelefono int,
@calle varchar(100),
@numero int,
@idireccion int
)AS
BEGIN
	INSERT INTO [dbo].[cliente] ([Nombre], [Apellido_Paterno], [Apellido_Materno], [Id_Fecha], [Id_telefono], [Calle], [Numero], [Id_direccion])
	VALUES (@nombre, @apellidoPat, @apellidoMat, @idfecha, @idtelefono, @calle, @numero, @idireccion)
END;

EXEC AgregarCliente Janeth, Pacheco, Cazarez, 1, 2, Barrientos, 11111, 6;

CREATE PROCEDURE EliminarCliente(
@id int
)AS
BEGIN
	DELETE FROM [dbo].[cliente] WHERE Numero_de_cliente = @id
END;

EXEC EliminarCliente 9;

CREATE PROCEDURE ConsultarCliente(
@name varchar(100)
)AS
BEGIN
	SELECT * FROM [dbo].[cliente] WHERE Nombre like '%' + @name + '%'
END;

EXEC ConsultarCliente David;

CREATE PROCEDURE ActualizarCliente (
@id int,
@nombre nvarchar (100),
@apellidoPat nvarchar (100),
@apellidoMat nvarchar (100),
@idfecha int,
@idtelefono int,
@calle varchar(100),
@numero int,
@idireccion int
)AS
BEGIN
	UPDATE [dbo].[cliente] SET [Nombre] = @nombre, [Apellido_Paterno] = @apellidoPat, [Apellido_Materno] = @apellidoMat, 
	[Id_Fecha] = @idfecha, [Id_telefono] = @idtelefono, [Calle] = @calle, [Numero] = @numero, [Id_direccion] = @idireccion
	WHERE [Numero_de_cliente] = @id
END;

EXEC ActualizarCliente 1, Samanta, Ozuso, NULL, 1, 4, Egipcia, 465456, 7;

CREATE PROCEDURE BuscarConJoin AS
BEGIN
	SELECT cliente.Nombre, Telefono.Telefono_1, Telefono.Telefono_2 FROM cliente inner join Telefono ON cliente.Numero_de_cliente = Telefono.Id_telefono
END;

EXEC BuscarConJoin;

CREATE FUNCTION GenerarFuncionGeneralEnBase10(
@a int,
@b int,
@c int
)returns int
as 
begin
	return @a * 10 * 2 + @b * 10 + @c
end;

select [dbo].[GenerarFuncionGeneralEnBase10](5,5,5);