-- Insertar usuarios
INSERT INTO usuarios (nombre_usuario, correo, fecha_registro, pais) VALUES
('Juanito', 'juanito@example.com', '2023-01-10', 'México'),
('Mariana', 'mariana@example.com', '2023-02-05', 'España'),
('Pedro', 'pedro@example.com', '2023-03-15', 'Argentina'),
('Lucía', 'lucia@example.com', '2023-04-20', 'Colombia');
-- Insertar videos
INSERT INTO videos (id_usuario, titulo, descripcion, fecha_publicacion, duracion_segundos) VALUES
(1, 'Bailando en la calle', 'Un reto de baile divertido', '2023-05-01', 45),
(2, 'Receta de pasta', 'Cómo hacer una pasta deliciosa', '2023-05-03', 120),
(3, 'Gato gracioso', 'Mi gato jugando con una caja', '2023-05-04', 30);
-- Insertar comentarios
INSERT INTO comentarios (id_video, id_usuario, texto, fecha_comentario) VALUES
(1, 2, '¡Qué buen ritmo!', '2023-05-02'),
(1, 3, 'Muy divertido :joy:', '2023-05-02'),
(2, 1, 'Me dio hambre', '2023-05-04');
-- Insertar likes
INSERT INTO likes (id_video, id_usuario, fecha_like) VALUES
(1, 2, '2023-05-02'),
(1, 3, '2023-05-02'),
(2, 1, '2023-05-03'),
(3, 4, '2023-05-05');
-- Insertar seguidores
INSERT INTO seguidores (id_usuario_seguidor, id_usuario_seguido, fecha_seguimiento) VALUES
(1, 2, '2023-05-01'),
(2, 1, '2023-05-02'),
(3, 1, '2023-05-03'),
(4, 2, '2023-05-04');