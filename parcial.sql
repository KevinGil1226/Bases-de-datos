CREATE DATABASE bd_universidad;
USE bd_universidad;

CREATE TABLE docentes (
    id_docente INT (12)  NOT null AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    email VARCHAR(30) UNIQUE NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    direccion VARCHAR (30) NOT NULL,
    ciudad VARCHAR (30) NOT NULL,
    genero VARCHAR (25) NOT null,
    especialidad VARCHAR(30) NOT null,
    PRIMARY KEY (id_docente)
);


CREATE TABLE estudiantes (
    id_estudiante INT (12) NOT null AUTO_INCREMENT ,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    fecha_nacimiento VARCHAR (25) NOT NULL,
    email VARCHAR(30) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    ciudad VARCHAR (30) NOT NULL,
    genero VARCHAR (25) NOT null,
    direccion VARCHAR(25) NOT NULL,
    PRIMARY KEY (id_estudiante)
);


CREATE TABLE forma_pago (
    id_forma_pago INT AUTO_INCREMENT ,
    descripcion VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_forma_pago)

);

CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT ,
    nombre VARCHAR(30) NOT NULL,
    descripcion VARCHAR (25) NOT NULL,
    id_docente INT (12) NOT NULL,
    PRIMARY KEY (id_curso),
    CONSTRAINT fk_docente
        FOREIGN KEY (id_docente) REFERENCES docentes(id_docente)
);


CREATE TABLE pago_matricula (
    id_pago INT AUTO_INCREMENT ,
    id_estudiante INT (12) NOT NULL,
    id_curso INT (12) NOT NULL,
    id_forma_pago INT NOT NULL,
    fecha_pago DECIMAL (10, 2) NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id_pago),
    CONSTRAINT fk_estudiante
        FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
    CONSTRAINT fk_curso
        FOREIGN KEY (id_curso) REFERENCES cursos(id_curso),
    CONSTRAINT fk_forma_pago
        FOREIGN KEY (id_forma_pago) REFERENCES forma_pago(id_forma_pago)
);
