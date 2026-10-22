-- creación de tabla víveres
CREATE TABLE viveres
(
    idVivere tinyint UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    cantidad tinyint UNSIGNED NOT NULL DEFAULT 0,
    marca VARCHAR(100),
    categoria VARCHAR(100)
);

-- inserción de registros
INSERT INTO viveres
    (nombre, cantidad, marca, categoria)
VALUES
    ('Arroz', 10, 'Gallo', 'Cereales'),
    ('Fideos', 15, 'Matarazzo', 'Pastas'),
    ('Harina de trigo', 8, 'Pureza', 'Harinas'),
    ('Azúcar', 12, 'Ledesma', 'Endulzantes'),
    ('Sal fina', 6, 'Celusal', 'Condimentos'),
    ('Aceite de girasol', 5, 'Cocinero', 'Aceites'),
    ('Leche entera', 20, 'La Serenísima', 'Lácteos'),
    ('Yerba mate', 10, 'Playadito', 'Infusiones'),
    ('Café molido', 4, 'Cabrales', 'Infusiones'),
    ('Té negro', 7, 'Taragüi', 'Infusiones'),
    ('Lentejas', 9, 'Arcor', 'Legumbres'),
    ('Garbanzos', 6, 'Inca', 'Legumbres'),
    ('Porotos', 8, 'Marolio', 'Legumbres'),
    ('Tomate triturado', 12, 'Molto', 'Conservas'),
    ('Arvejas en lata', 10, 'La Campagnola', 'Conservas'),
    ('Atún en lata', 5, 'Carrefour', 'Conservas'),
    ('Galletitas dulces', 14, 'Bagley', 'Galletitas'),
    ('Galletitas saladas', 11, 'Criollitas', 'Galletitas'),
    ('Mermelada de durazno', 3, 'BC', 'Dulces'),
    ('Dulce de leche', 7, 'La Serenísima', 'Dulces');