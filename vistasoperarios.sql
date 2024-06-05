-- Insertar operarios
INSERT INTO Operario (ID_Operario, Nombre, Contacto) VALUES
(1, 'Juan Pérez', 'juan@example.com'),
(2, 'María López', 'maria@example.com');

-- Insertar estaciones
INSERT INTO Estacion (ID_Estacion, Modelo, Fecha_Compra, Fecha_Instalacion, Nombre_Barrio, Latitud, Longitud) VALUES
(1, 'Modelo A', '2023-01-15', '2023-02-01', 'Barrio 1', 12.3456, -78.9012);

-- Insertar visitas de los operarios a la estación
INSERT INTO Visita (ID_Visita, Fecha, Hallazgo, ID_Operario, ID_Estacion) VALUES
(1, '2024-06-01', TRUE, 1, 1),
(2, '2024-06-02', FALSE, 1, 1),
(3, '2024-06-03', TRUE, 1, 1),
(4, '2024-06-04', FALSE, 2, 1),
(5, '2024-06-05', TRUE, 2, 1);
