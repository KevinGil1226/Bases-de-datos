CREATE DATABASE bd_prueba;

USE bd_prueba;

CREATE TABLE tbl_producto(
    id_producto INT NOT NULL,
    nombre INT NOT NULL,
    apellido VARCHAR(25) NULL,
    existencia VARCHAR(25) NOT NULL,
    categoria VARCHAR(25) NOT NULL,
    fecha VARCHAR(25) NOT NULL,
    precio INT NOT NULL,
    PRIMARY KEY (id_producto)
)