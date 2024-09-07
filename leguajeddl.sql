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
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--MODIFICAR TABLAS

--Agregar una columna a una tabla 
ALTER TABLE nombre_tabla;
ADD nombre_columna tipo_dato;

--Modificar una columna de una tabla
ALTER TABLE nombre_tabla;
MODIFY nombre_columna nuevo_tipo_dato;

--Renombrar una columna de una tabla
ALTER TABLE nombre_tabla;
CHANGE nombre_columna_antiguo nombre_columna_nuevo tipo_dato;

--Eliminar una columna de una tabla
ALTER TABLE nombre_tabla;
DROP nombre_columna;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Tablas
--Eliminar una tabla
DROP TABLE nombre_tabla;

--Eliminar una tabla solo si existe
DROP TABLE IF EXISTS nombre_tabla;

--Renombrar una tabla
--RENAME TABLE nombre_tabla_a_renombrar_ TO nombre_tabla_nueva;
ALTER TABLE nombre_columna_antiguo;
RENAME TO nombre_tabla_nuevo;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Claves foraneas
--Agregar una clave foranea
ALTER TABLE nombre_tabla;
ADD CONSTRAINT nombre_clave_foranea;
FOREIGN KEY (nombre_columna);
REFERENCES tabla_referencia(nombre_columna_referenciada);

--Eliminar una clave foranea
ALTER TABLE nombre_tabla;
DROP FOREIGN KEY nombre_clave_foranea;
