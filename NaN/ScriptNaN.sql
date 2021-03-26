/*
	En este caso contamos con 3 tablas, Clientes, Sucursales y Ventas por Sucursal.
	Las ventas por Sucursal van a levantar la informacion de cada cliente y sucursal por venta mediante 
	los id correspondientes y registrar la informacion de cada venta realizada
*/
create database nan
go
use nan
go
create table Clientes(
	idCliente int not null identity (1,1) primary key,
	dni int not null unique,
	apellidos nvarchar(75) not null,
	nombres nvarchar(75) not null,
	cel int null,
)
go
create table Sucursales(
	idSuc int not null identity(1,1) primary key,
	direccion varchar(100) not null,
	codPostal smallint not null,
	rSocial varchar(50) not null unique,
	cuit int not null unique,
)
go
create table VentasxSuc(
	idSuc int not null foreign key references Sucursales(idSuc),
	idCliente int not null foreign key references Clientes(idCliente),
	venta money not null,
	kgs float not null,
	fecha date not null,
)
go
