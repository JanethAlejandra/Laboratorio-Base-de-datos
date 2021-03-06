USE [master]
GO
--Alumnos del Laboratorio
--Jean Carlos Balderas Martinez 1510181
--Janeth Alejandra Pacheco Cazarez 1664672
/****** Object:  Database [LocalTecno]    Script Date: 27/10/2018 12:02:01 p. m. ******/
CREATE DATABASE [LocalTecno]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LocalTecno', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LocalTecno.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LocalTecno_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LocalTecno_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LocalTecno] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LocalTecno].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LocalTecno] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LocalTecno] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LocalTecno] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LocalTecno] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LocalTecno] SET ARITHABORT OFF 
GO
ALTER DATABASE [LocalTecno] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LocalTecno] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LocalTecno] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LocalTecno] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LocalTecno] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LocalTecno] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LocalTecno] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LocalTecno] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LocalTecno] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LocalTecno] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LocalTecno] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LocalTecno] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LocalTecno] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LocalTecno] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LocalTecno] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LocalTecno] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LocalTecno] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LocalTecno] SET RECOVERY FULL 
GO
ALTER DATABASE [LocalTecno] SET  MULTI_USER 
GO
ALTER DATABASE [LocalTecno] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LocalTecno] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LocalTecno] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LocalTecno] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LocalTecno] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LocalTecno', N'ON'
GO
ALTER DATABASE [LocalTecno] SET QUERY_STORE = OFF
GO
USE [LocalTecno]
GO
/****** Object:  UserDefinedFunction [dbo].[GenerarFuncionGeneralEnBase10]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GenerarFuncionGeneralEnBase10](
@a int,
@b int,
@c int
)returns int
as 
begin
	return @a * 10 * 2 + @b * 10 + @c
end;
GO
/****** Object:  Table [dbo].[Bitacore]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacore](
	[idBitacore] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idBitacore] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[Numero_de_cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido_Paterno] [varchar](20) NOT NULL,
	[Apellido_Materno] [varchar](20) NULL,
	[Id_Fecha] [int] NOT NULL,
	[Id_telefono] [int] NOT NULL,
	[Calle] [varchar](20) NOT NULL,
	[Numero] [int] NULL,
	[Id_direccion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Numero_de_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente_Prospecto]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente_Prospecto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [text] NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido_Paterno] [varchar](20) NOT NULL,
	[Id_telefono] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cotizacion]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cotizacion](
	[Id_cotizacion] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](20) NOT NULL,
	[Id_producto] [int] NULL,
	[Cantidad] [int] NULL,
	[Id_fecha] [int] NULL,
	[Monto_final] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_cotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[Id_direccion] [int] IDENTITY(1,1) NOT NULL,
	[Colonia] [varchar](30) NOT NULL,
	[Municipio] [varchar](20) NOT NULL,
	[Estado] [varchar](20) NOT NULL,
	[Codigo_Postal] [int] NULL,
	[Pais] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Numero_de_empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido_Paterno] [varchar](20) NOT NULL,
	[Apellido_Materno] [varchar](20) NOT NULL,
	[Edad] [tinyint] NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[Calle] [varchar](20) NOT NULL,
	[Numero] [int] NULL,
	[Id_direccion] [int] NULL,
	[Id_telefono] [int] NOT NULL,
	[iIdPuesto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Numero_de_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fecha]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fecha](
	[Id_fecha] [int] IDENTITY(1,1) NOT NULL,
	[Dia] [int] NOT NULL,
	[Mes] [varchar](15) NOT NULL,
	[Anio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormaDePago]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormaDePago](
	[iIdFormaDePago] [int] NOT NULL,
	[vDescripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdFormaDePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Id_inventario] [int] IDENTITY(1,1) NOT NULL,
	[Id_fecha] [int] NULL,
	[Id_producto] [int] NULL,
	[Cantidad_Unidad] [float] NULL,
	[Cantidad_Paquete] [int] NULL,
	[Cantidad_Caja] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id_producto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Precio] [float] NOT NULL,
	[Descuento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Id_Proveedor] [int] IDENTITY(1,1) NOT NULL,
	[Id_telefono] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Pagina_Web] [text] NULL,
	[Calle] [varchar](20) NOT NULL,
	[Numero] [int] NULL,
	[Id_direccion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[iIdPuesto] [int] NOT NULL,
	[vDescripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefono]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono](
	[Id_telefono] [int] IDENTITY(1,1) NOT NULL,
	[Telefono_1] [varchar](20) NOT NULL,
	[Telefono_2] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[iIdVenta] [int] IDENTITY(1,1) NOT NULL,
	[Numero_de_cliente] [int] NULL,
	[iIdFormaDePago] [int] NULL,
	[iIdProducto] [int] NULL,
	[dFecha] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iIdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([Id_direccion])
REFERENCES [dbo].[Direccion] ([Id_direccion])
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([Id_Fecha])
REFERENCES [dbo].[Fecha] ([Id_fecha])
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([Id_telefono])
REFERENCES [dbo].[Telefono] ([Id_telefono])
GO
ALTER TABLE [dbo].[cliente_Prospecto]  WITH CHECK ADD FOREIGN KEY([Id_telefono])
REFERENCES [dbo].[Telefono] ([Id_telefono])
GO
ALTER TABLE [dbo].[Cotizacion]  WITH CHECK ADD FOREIGN KEY([Id_fecha])
REFERENCES [dbo].[Fecha] ([Id_fecha])
GO
ALTER TABLE [dbo].[Cotizacion]  WITH CHECK ADD FOREIGN KEY([Id_producto])
REFERENCES [dbo].[Producto] ([Id_producto])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK__Empleado__Id_dir__4E88ABD4] FOREIGN KEY([Id_direccion])
REFERENCES [dbo].[Direccion] ([Id_direccion])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK__Empleado__Id_dir__4E88ABD4]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK__Empleado__Id_tel__4F7CD00D] FOREIGN KEY([Id_telefono])
REFERENCES [dbo].[Telefono] ([Id_telefono])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK__Empleado__Id_tel__4F7CD00D]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Puesto] FOREIGN KEY([iIdPuesto])
REFERENCES [dbo].[Puesto] ([iIdPuesto])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Puesto]
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([Id_fecha])
REFERENCES [dbo].[Fecha] ([Id_fecha])
GO
ALTER TABLE [dbo].[Inventario]  WITH CHECK ADD FOREIGN KEY([Id_producto])
REFERENCES [dbo].[Producto] ([Id_producto])
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD FOREIGN KEY([Id_direccion])
REFERENCES [dbo].[Direccion] ([Id_direccion])
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD FOREIGN KEY([Id_telefono])
REFERENCES [dbo].[Telefono] ([Id_telefono])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([iIdFormaDePago])
REFERENCES [dbo].[FormaDePago] ([iIdFormaDePago])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([iIdProducto])
REFERENCES [dbo].[Producto] ([Id_producto])
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD FOREIGN KEY([Numero_de_cliente])
REFERENCES [dbo].[cliente] ([Numero_de_cliente])
GO
/****** Object:  StoredProcedure [dbo].[ActualizarCliente]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarCliente] (
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
GO
/****** Object:  StoredProcedure [dbo].[AgregarCliente]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregarCliente](
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
GO
/****** Object:  StoredProcedure [dbo].[BuscarConJoin]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarConJoin] AS
BEGIN
	SELECT cliente.Nombre, Telefono.Telefono_1, Telefono.Telefono_2 FROM cliente inner join Telefono ON cliente.Numero_de_cliente = Telefono.Id_telefono
END;
GO
/****** Object:  StoredProcedure [dbo].[ConsultarCliente]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsultarCliente](
@name varchar(100)
)AS
BEGIN
	SELECT * FROM [dbo].[cliente] WHERE Nombre like '%' + @name + '%'
END;
GO
/****** Object:  StoredProcedure [dbo].[EliminarCliente]    Script Date: 27/10/2018 12:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarCliente](
@id int
)AS
BEGIN
	DELETE FROM [dbo].[cliente] WHERE Numero_de_cliente = @id
END;
GO
USE [master]
GO
ALTER DATABASE [LocalTecno] SET  READ_WRITE 
GO
