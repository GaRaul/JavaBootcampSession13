create database Academia;

use Academia;

create table Profesores(
Nombre_Completo varchar(255) unique,
DNI varchar(8) primary key,
Direccion varchar(255),
Titulo varchar(100),
Gana int unsigned not null);

create table Cursos(
Nombre_Curso varchar(100) unique,
Cod_Curso int unsigned primary key,
DNI_Profesor varchar(8),
Maximo_Alumnos int unsigned,
Fecha_Inicio datetime,
Fecha_Fin datetime,
Num_Horas int unsigned not null);

create table Alumnos (
Nombre varchar(100),
Apellido1 varchar(100),
Apellido2 varchar(100),
DNI varchar(8) primary key,
Direccion varchar(255),
Sexo enum("H","M"),
Fecha_Nacimiento date,
Curso int unsigned);

create table Cursa (
DNI_Alumno varchar(8),
Cod_Curso int unsigned,
primary key (DNI_Alumno, Cod_Curso),
foreign key(DNI_Alumno) references Alumnos(DNI) on update cascade on delete cascade,
foreign key(Cod_Curso) references Cursos(Cod_Curso) on update cascade on delete cascade);

create table Imparte (
DNI_Profesor varchar(8),
Cod_Curso int unsigned,
primary key (DNI_Profesor, Cod_Curso),
foreign key(DNI_Profesor) references Profesores(DNI) on update cascade on delete cascade,
foreign key(Cod_Curso) references Cursos(Cod_Curso) on update cascade on delete cascade);
