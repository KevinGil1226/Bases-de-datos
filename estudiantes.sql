CREATE DATABASE bd_estudiantes;

USE bd_estudiantes;

CREATE TABLE tbl_estudiante (
    id_estudiante INT(10) NOT NULL,
    nombres VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    id_carrera INT NOT NULL,
    id_genero INT NOT NULL,
    semestre VARCHAR(2) NOT NULL,
    telefono_celular INT(10) NOT NULL,
    telefono_fijo INT(8) NULL,
    fecha_ingreso DATE NOT NULL,
    saldo_deuda DECIMAL (8,2) NOT NULL,
    PRIMARY KEY(id_estudiante),
    FOREIGN KEY(id_carrera) REFERENCES tbl_carrera(id_carrera),
    FOREIGN KEY(id_genero) REFERENCES tbl_genero(id_genero)
)

CREATE TABLE tbl_carrera (
    id_carrera INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (20) NOT NULL,
    id_facultad INT NOT NULL,                     
    PRIMARY KEY(id_carrera),
    FOREIGN KEY(id_facultad) REFERENCES tbl_facultad(id_facultad)
)

CREATE TABLE tbl_facultad (
    id_facultad INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_facultad)
)

CREATE TABLE tbl_genero (
    id_genero INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_genero)
)