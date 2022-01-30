create database PiezasYProveedores;

use PiezasYProveedores;

create table Piezas (
Codigo int unsigned auto_increment primary key,
Nombre varchar(100));

create table Proveedores (
Id char(4) primary key,
Nombre varchar(100));

create table Suministra(
CodigoPieza int unsigned auto_increment,
IdProveedor char(4),
Precio int unsigned,
primary key (CodigoPieza, IdProveedor),
foreign key (CodigoPieza) references Piezas(Codigo),
foreign key (IdProveedor) references Proveedores(Id));
