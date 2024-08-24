--(Creación de base de datos)
CREATE DATABASE bd_lenguajeproductos;
--Usar la base de datos
USE bd_lenguajeproductos;    
--Crear una tabla
CREATE TABLE tbl_Productos(
    idProducto INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,
    categoria VARCHAR(25) NOT NULL,
    email VARCHAR(25) NOT NULL,
    PRIMARY KEY (idProducto)
)
--Base de datos para el lenguaje