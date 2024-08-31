CREATE DATABASE bd_estudiantes;

USE bd_estudiantes;

CREATE TABLE tbl_estudiantes (
    id_estudiante INT(10) NOT NULL,
    nombres VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    carrera VARCHAR(20) NOT NULL,
    genero VARCHAR(20) NOT NULL,
    semestre VARCHAR(2) NOT NULL,
    telefono_celular INT(10) NOT NULL,
    telefono_fijo INT(8) NULL,
    fecha_ingreso DATE NOT NULL,
    saldo_deuda DECIMAL (8,2) NOT NULL,
    PRIMARY KEY(id_estudiante)
)

CREATE TABLE tbl_carrera (
    id_carrera INT (20) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (20) NOT NULL,
    facultad VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_carrera)
)

CREATE TABLE tbl_facultad (
    id_facultad INT(20) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_facultad)
)

CREATE TABLE tbl_genero (
    id_genero INT (20) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_genero)
)