CREATE DATABASE bd_empleados;

USE bd_empleados;

CREATE TABLE tbl_empleados(
    idIdentificacion INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    direccion VARCHAR (25) NOT NULL,
    departamento VARCHAR (20) NOT NULL,
    ciudad VARCHAR (20) NOT NULL,
    género VARCHAR (15) NOT NULL,
    correopersonal VARCHAR (30) NOT NULL,
    correocorporativo VARCHAR (30) NOT NULL,
    cargo VARCHAR (20) NOT NULL,
    area VARCHAR (20) NOT NULL,
    telefono INT NOT NULL,
    telefono_opcional INT NULL,
    PRIMARY KEY (idIdentificacion)
)
