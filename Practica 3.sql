create database LocalTecno

use LocalTecno

create table Direccion(
Id_direccion int not null PRIMARY KEY IDENTITY(1,1),
Colonia varchar(30) not null ,
Municipio varchar(20) not null,
Estado varchar(20) not null,
Codigo_Postal int,
Pais varchar(20) not null
)

create table Telefono(
Id_telefono int not null PRIMARY KEY IDENTITY(1,1),
Telefono_1 varchar(20) not null,
Telefono_2 varchar(20)
)

create table Fecha(
Id_fecha int not null PRIMARY KEY IDENTITY(1,1),
Dia int not null,
Mes varchar(15) not null,
Anio int not null
)

create table Producto(
Id_producto int not null PRIMARY KEY IDENTITY(1,1),
Nombre varchar(30) not null,
Descripcion text not null,
Precio float not null,
Descuento int
)

create table cliente_Prospecto
(
Id int not null PRIMARY KEY IDENTITY(1,1),
Descripcion text,
Nombre varchar(30) not null,
Apellido_Paterno varchar(20) not null,
Id_telefono int FOREIGN KEY REFERENCES Telefono(Id_telefono) not null
)

create table cliente (
Numero_de_cliente int not null PRIMARY KEY IDENTITY(1,1),
Nombre varchar(30) not null,
Apellido_Paterno varchar(20) not null,
Apellido_Materno varchar(20),
Id_Fecha int FOREIGN KEY REFERENCES Fecha(Id_Fecha) not null,
Id_telefono int FOREIGN KEY REFERENCES Telefono(Id_telefono) not null,
Calle varchar(20) not null,
Numero int,
Id_direccion int FOREIGN KEY REFERENCES Direccion(Id_direccion)
)


create table Proveedor(
Id_Proveedor int not null PRIMARY KEY IDENTITY(1,1),
Id_telefono int FOREIGN KEY REFERENCES Telefono(Id_telefono) not null,
Nombre varchar(30) not null,
Pagina_Web text,
Calle varchar(20) not null,
Numero int,
Id_direccion int FOREIGN KEY REFERENCES Direccion(Id_direccion)
)

create table Cotizacion(
Id_cotizacion int not null PRIMARY KEY IDENTITY(1,1),
Tipo varchar(20) not null,
Id_producto int FOREIGN KEY REFERENCES Producto(Id_producto),
Cantidad int,
Id_fecha int FOREIGN KEY REFERENCES Fecha(Id_fecha),
Monto_final float
)

create table Empleado(
Numero_de_empleado int not null PRIMARY KEY IDENTITY(1,1),
Nombre varchar(30) not null,
Apellido_Paterno varchar(20) not null,
Apellido_Materno varchar(20) not null,
Edad tinyint not null,
Sexo char(1) not null,
Calle varchar(20) not null,
Numero int,
Id_direccion int FOREIGN KEY REFERENCES Direccion(Id_direccion),
Id_telefono int FOREIGN KEY REFERENCES Telefono(Id_telefono) not null
)

create table Inventario(
Id_inventario int not null PRIMARY KEY IDENTITY(1,1),
Id_fecha int FOREIGN KEY REFERENCES Fecha(Id_fecha),
Id_producto int FOREIGN KEY REFERENCES Producto(Id_producto),
Cantidad_Unidad float,
Cantidad_Paquete int,
Cantidad_Caja int
)


