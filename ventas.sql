CREATE DATABASE bd_ventas;
USE bd_ventas;
CREATE TABLE tbl_ventas(
    codigo_ventas INT NOT NULL AUTO_INCREMENT,
    fecha INT(20) NOT NULL,
    nombre_cliente VARCHAR(20) NOT NULL,
    direccion INT(20) NOT NULL,
    forma_de_pago VARCHAR(20) NOT NULL,
    vendedor VARCHAR(20) NOT NULL,
    servicio VARCHAR(20) NOT NULL,
    precio_unitario INT(20) NOT NULL,
    cantidad VARCHAR(20) NOT NULL,
    total VARCHAR(20) NOT NULL,
    prducto VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    precio_mayor VARCHAR(20) NOT NULL,
    PRIMARY KEY(codigo_ventas)
)
CREATE TABLE tbl_departamento(
    id_codigo INT NOT NULL,
    nobre VARCHAR(20) NOT NULL,
    PRIMARY KEY(id_codigo)
)
CREATE TABLE tbl_ciudad(
    codigo_postal INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    departamento VARCHAR(20) NOT NULL,
    direccion INT(20) NOT NULL,
    PRIMARY KEY(codigo_postal)
)
CREATE TABLE tbl_cliente(
    identificacion INT NOT NULL,
    sede VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    direccion INT(20) NOT NULL,
    correo VARCHAR(30) NOT NULL,
    PRIMARY KEY(identificacion)
)
CREATE TABLE tbl_vendedor(
    identificacion INT NOT NULL,
    correo VARCHAR(20) NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    apellidos VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    direccion VARCHAR(20) NOT NULL,
    PRIMARY KEY(identificacion)
)
CREATE TABLE tbl_cantidad(
    codigo_cantidad INT NOT NULL,
    cantidad_existente INT(20) NOT NULL,
    cantidad_nueva INT(20) NOT NULL,
    PRIMARY KEY(codigo_cantidad)
)
CREATE TABLE tbl_producto(
    codigo_producto INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    PRIMARY KEY(codigo_producto)
)
CREATE TABLE tbl_sede(
    codigo_sede INT NOT NULL,
    nombre VARCHAR(20) NOT NULL,
    direccion VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    departamento VARCHAR(20) NOT NULL,
    PRIMARY KEY(codigo_sede)
)
CREATE TABLE tbl_pago(
    codigo_pago INT NOT NULL,
    forma_pago VARCHAR(20) NOT NULL,
    PRIMARY KEY(codigo_pago)
)
