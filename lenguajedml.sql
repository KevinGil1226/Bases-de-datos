/*insert, lo siguiente es para relizar un insert */
INSERT INTO nombre_tabla (campostabla)
VALUES (datos)

DELETE FROM nombre_tabla (campostabla)
WHERE (datos)

SELECT (campostabla1,campostabla2)
FROM nombre_tabla 
WHERE(condición)
/*ejemplo
USE bd_estudiantes;
SELECT nombres,semestre,apellidos 
FROM tbl_estudiante
WHERE tbl_estudiante.semestre>=2 AND tbl_estudiante.id_estudiante=1007374036;
        /// De varios datos, y para conectar dos tablas y/o mas
USE bd_estudiantes;
SELECT tbl_estudiante.nombres, tbl_estudiante.apellidos,tbl_estudiante.semestre,tbl_genero.nombre
FROM tbl_estudiante
JOIN tbl_genero
ON tbl_estudiante.id_genero = tbl_genero.id_genero
WHERE tbl_estudiante.semestre = 4 AND tbl_genero.nombre = 'Masculino'
        /// Dos tablas conectadas
USE bd_estudiantes;
SELECT tbl_estudiante.nombres AS 'Nombre estudiante', tbl_estudiante.apellidos AS 'Apellido estudiante', tbl_carrera.nombre AS 'Nombre carrera',tbl_facultad.nombre AS 'Nombre facultad'
FROM tbl_estudiante
JOIN tbl_carrera
ON tbl_estudiante.id_carrera = tbl_carrera.id_carrera
JOIN tbl_facultad
ON tbl_carrera.id_facultad = tbl_facultad.id_facultad
WHERE tbl_estudiante.saldo_deuda > 0;



*/
