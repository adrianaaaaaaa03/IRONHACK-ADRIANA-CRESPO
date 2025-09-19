-- Script de creacion y carga de datos

-- Crear BBDD y carga de datos TIKTokDB
CREATE DATABASE TikTokDB;
USE TikTokDB;

-- Crear tablas de la base de datos
-- TABLA USUARIO
CREATE TABLE usuarios (
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) UNIQUE NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    fecha_registro DATE NOT NULL,
    pais VARCHAR(50) NOT NULL
);

-- TABLA VIDEOS
CREATE TABLE videos (
	id_video INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    descripcion TEXT,
    fecha_publicacion DATE NOT NULL,
    duracion_segundos INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-- TABLA COMENTARIOS
CREATE TABLE comentarios (
	id_comentarios INT AUTO_INCREMENT PRIMARY KEY,
    id_video INT NOT NULL,
    id_usuario INT NOT NULL,
    texto TEXT NOT NULL,
    fecha_comentario DATE NOT NULL,
    FOREIGN KEY (id_video) REFERENCES videos(id_video),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);


-- TABLA LIKE
CREATE TABLE likes (
	id_likes INT AUTO_INCREMENT PRIMARY KEY,
    id_video INT NOT NULL,
    id_usuario INT NOT NULL,
    texto TEXT,
    fecha_like DATE NOT NULL,
    FOREIGN KEY (id_video) REFERENCES videos(id_video),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-- TABLA SEGUIDORES
CREATE TABLE seguidores (
	id_seguidor INT AUTO_INCREMENT PRIMARY KEY,
	id_usuario_seguidor INT NOT NULL,
	id_usuario_seguido INT NOT NULL,
	fecha_seguimiento DATE NOT NULL,
    FOREIGN KEY (id_usuario_seguidor) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_usuario_seguido) REFERENCES usuarios(id_usuario), 
	CONSTRAINT chk_seguirse CHECK (id_usuario_seguidor <> id_usuario_seguido)
);




