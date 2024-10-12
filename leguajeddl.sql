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


--Funciones matemáticas

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Obtiene el número de registros de una tabla.
SELECT COUNT(*) FROM empleados;
--Obtiene la suma de los salarios de los empleados.
SELECT SUM(salario) FROM empleados;
--Obtiene el promedio de los salrios de los empleados.
SELECT AVG(salario) FROM empleados;
--Obtiene el mínimo de los salarios de los empleados.
SELECT MIN(salario) FROM empleados;
--Obtiene el máximo de los salrios de los empleados.
SELECT MAX(salario) FROM empleados;
--Redondea un número a una cantidad especifica de decimales.
SELECT ROUND(salario,2) FROM empleados;
--Redondea un número hacia arriba al entero mas cercano.
SELECT CEIL(salario) FROM empleados;
--Redonde un número hacia abajo al entero mas cercano.
SELECT FLOOR(nombre) FROM empleados;

--Funciones de cadena
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Obtiene el nombre completo de un empleado
SELECT CONCAT(nombres,'',apellidos) AS nombre_completo FROM empleados;
--Obtiene la abreviatura de una cadena 
SELECT SUBSTRING(nombres,1,3) AS abreviatura FROM empleados;
--Obtiene la longitud de una cadena.
SELECT LENGTH(nombres) FROM empleados;
--Convierte una cadena a mayúsculas.
SELECT UPPER(nombres) FROM empleados;
--Convierte una cadena a minúsculas.
SELECT LOWER(nombre) FROM empleados;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Funciones de fecha y hora
--Obtiene la fecha y hora actual
SELECT NOW()
--Obtiene la fecha actual.
SELECT CURDATE();
--Calcula la diferencia entre dos fechas.
SELECT DATEDIFF('2024-10-15', '2024-10-01') AS diferencia_dias;
--Extrae el año de una fecha.
SELECT YEAR(fecha_nacimiento) FROM empledos;
--Funciones de control de flujos
SELECT nombre, IF(salario > 3000, 'Alta','Baja') AS nivel_salarial FROM empleados;