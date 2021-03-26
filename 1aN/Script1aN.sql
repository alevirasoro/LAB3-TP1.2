/*
En la Relacion 1 a N empezamos con una tabla de clientes que contiene su informacion basica personal
y una segunda tabla que registra cada pedido de los clientes con un id propio autogenerado y el id cliente
cuantos kilos pidio y la cantidad de gustos
*/

create database UNOaMUCHOS
go
use UNOaMUCHOS
go
create table clientes(
id_cliente int not null primary key identity(100,1),
dni varchar(8) not null unique,
apellido varchar(25) not null,
nombres varchar(25) not null,
cel varchar(15) null,
)
go
create table pedidos(
id_pedido int not null primary key identity(100,1),
cliente int not null foreign key references  clientes(id_cliente),
kilos float not null,
cant_gustos int not null check(cant_gustos=1 or cant_gustos=2 or cant_gustos=3 or cant_gustos=4),
)
