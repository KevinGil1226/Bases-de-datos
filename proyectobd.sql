CREATE DATABASE bd_proyecto;

USE bd_proyecto;

CREATE TABLE tbl_factura(
    id_factura INT(15) NOT NULL AUTO_INCREMENT,
    id_vendedor INT(15) NOT NULL,
    id_sede INT(15) NOT NULL,
    id_cliente INT(15) NOT NULL,
    fecha_venta DATE NOT NULL,
    valor_total DECIMAL(10,8) NOT NULL,
    id_producto INT(15) NOT NULL,
    id_metodo_de_pago INT(15) NOT NULL,
    cantidad_vendida INT(15) NOT NULL,
    id_tipo_servicio INT(15) NOT NULL,
    PRIMARY KEY (id_factura),
    FOREIGN KEY (id_vendedor) REFERENCES tbl_vendedor(id_vendedor),    
    FOREIGN KEY (id_sede) REFERENCES tbl_sede(id_sede),
    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES tbl_producto(id_producto),
    FOREIGN KEY (id_metodo_de_pago) REFERENCES tbl_metodo_de_pago(id_metodo_de_pago),
    FOREIGN KEY (id_tipo_servicio) REFERENCES tbl_tipo_servicio(id_tipo_servicio)
);

CREATE TABLE tbl_vendedor(
    id_vendedor INT(15) NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    telefono INT(15) NOT NULL,
    direccion VARCHAR(15) NOT NULL,
    id_genero INT(15) NOT NULL,
    cargo VARCHAR(25) NOT NULL,
    correo VARCHAR(25) NOT NULL,
    PRIMARY KEY (id_vendedor),
    FOREIGN KEY (id_genero) REFERENCES tbl_genero(id_genero)
);

CREATE TABLE tbl_producto(
    id_producto INT(15) NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    id_subcategoria INT(15) NOT NULL,
    id_proveedor INT(15) NOT NULL,
    valor venta VARCHAR(15) NOT NULL,
    existencia INT(15) NOT NULL,
    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_subcategoria) REFERENCES tbl_subcategoria(id_subcategoria),
    FOREIGN KEY (id_proveedor) REFERENCES tbl_proveedor(id_proveedor)
);

CREATE TABLE tbl_cliente(
    id_cliente INT(15) NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    telefono INT(25) NOT NULL,
    direccion VARCHAR(25) NOT NULL,
    id_ciudad INT(15) NOT NULL,
    correo VARCHAR(25) NOT NULL,
    id_genero INT(15) NOT NULL,
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (id_ciudad) REFERENCES tbl_ciudad(id_ciudad),
    
)