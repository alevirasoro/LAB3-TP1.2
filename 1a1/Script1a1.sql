create database act12
go
use act12
go

create table Helados(
	idGusto int not null identity(1,1),
	precioKg money not null,
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
