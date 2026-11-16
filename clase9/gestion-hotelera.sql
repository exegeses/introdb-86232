# gestión hotelera.
-- tablas
CREATE TABLE hoteles (
                         idHotel tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
                         hotel VARCHAR(100) NOT NULL,
                         direccion VARCHAR(150) NOT NULL
);
CREATE TABLE empleados (
                           idEmpleado tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
                           empleado VARCHAR(100) NOT NULL,
                           sector ENUM('Gerente', 'Recepcionista', 'Barista', 'Cocinero', 'Mantenimiento', 'Limpieza') NOT NULL,
                           idHotel tinyint unsigned NULL,
                           CONSTRAINT fk_hotel FOREIGN KEY (idHotel) REFERENCES hoteles(idHotel) ON DELETE SET NULL
);

-- datos
-- Inserción de Hoteles
INSERT INTO hoteles
(hotel, direccion)
VALUES
    ('Alvear Icon', 'Aimé Painé 1130'),
    ('Patagonia', 'Av. del Libertador 450'),
    ('Urbano Central', 'Florida 100'),
    ('Costa Galana', 'Peralta Ramos 5725');

-- Inserción de Empleados
-- Todos los hoteles tienen: Gerente, Recepcionista, Cocinero y Limpieza.
-- Exceptuamos Barista y Mantenimiento en algunos para generar los gaps.

INSERT INTO empleados (empleado, sector, idHotel) VALUES
-- Hotel 1: Alvear Icon (Tiene TODOS los sectores)
('Carlos', 'Gerente', 1),
('Marta', 'Recepcionista', 1),
('Dante', 'Cocinero', 1),
('Sergio', 'Limpieza', 1),
('Jimena', 'Barista', 1),
('Pedro', 'Mantenimiento', 1),

-- Hotel 2: Patagonia (NO TIENE Barista ni Mantenimiento)
-- Esto es ideal para mostrar que el LEFT JOIN traerá NULL en esos puestos si filtras por ellos.
('Sofía', 'Gerente', 2),
('Ariel', 'Recepcionista', 2),
('Tomás', 'Cocinero', 2),
('Elena', 'Limpieza', 2),

-- Hotel 3: Urbano Central (Tiene todo menos Barista)
('Bautista', 'Gerente', 3),
('Lorena', 'Recepcionista', 3),
('Fabián', 'Cocinero', 3),
('Úrsula', 'Limpieza', 3),
('Ramiro', 'Mantenimiento', 3),

-- Hotel 4: Costa Galana (Tiene todo menos Mantenimiento)
-- (Podés usarlo para contrastar con el Hotel 3)
('Victoria', 'Gerente', 4),
('Manuel', 'Recepcionista', 4),
('Julieta', 'Cocinero', 4),
('Rosa', 'Limpieza', 4),
('Esteban', 'Barista', 4);