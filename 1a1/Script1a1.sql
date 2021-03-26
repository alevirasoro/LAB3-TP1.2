/*
Base de datos que demuestra la relacion 1a1 entre una tabla de helados y una que contiene las recetas de los mismos.
Cada helado podra tener solo una receta y cada receta correspondera solo a un helado.
*/

create database act12
go
use act12
go

create table Helados(
	idGusto int not null identity(1,1),
	precioKg money not null check(precioKg > 0),
	descuento float null,
	stock float not null,
	primary key(idGusto) 
)
go
create table Recetas(
	idGusto int not null identity (1,1),
	leche float null,
	azucar float null,
	huevo smallint null,
	adicionales nvarchar(150),
	primary key (idGusto),
	foreign key (idGusto) references Helados (idGusto),
)
go
