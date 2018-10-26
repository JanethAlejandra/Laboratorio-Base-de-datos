create database LocalTecno

use LocalTecno

create table cliente
(
Id bigint identity (1,1) not null,
Nombre varchar(30) not null,
Apellido_Paterno varchar(20) not null,
Apellido_Materno varchar(20) not null,
Telefono varchar(15)
)

create table Producto
(
Id bigint identity(1,1) not null,
Nombre varchar(30) not null,
Descripcion text not null,
Precio float not null,
Descuento char(2) not null

)
create table Proveedor(
Id bigint not null,
Nombre varchar(30) not null,
Telefono varchar(15) not null,
Pagina_Web text,
Direccion text not null

)


create table Venta(

Id bigint not null,
Fecha datetime not null,
Monto_final float

)

create table Empleado(
Nombre varchar(30) not null,
Apellido_Paterno varchar(20) not null,
Apellido_Materno varchar(20) not null,
Edad tinyint not null,
Sexo char(1) not null,
Domicilio text not null,
Telefono varchar(15) not null
)

create table Inventario(
Id bigint not null,
Fecha datetime not null,
Cantidad float not null
)