# Alias en SQL
/*
Podemos renombrar el enunciado de una columna
y esto servirá cuando queramos generar un reporte
La estructura de las tablas no se modifica de manera permanente,
sino que el renombrado es únicamente para el reporte
que estamos generando
*/
SELECT
        idProducto AS ID,
        producto AS Producto,
        precio AS Contado,
        precio * 1.05 AS Lista,
        marca AS Marca,
        categoria AS Categoría
FROM
        productos
JOIN 	marcas
    ON  productos.idMarca = marcas.idMarca
JOIN	categorias
    ON  productos.idCategoria = categorias.idCategoria;

/* también podemos utilizar un alias para
   los nombres de las tablas */
SELECT
    idProducto AS ID,
    producto AS Producto,
    precio AS Contado,
    precio * 1.05 AS Lista,
    marca AS Marca,
    categoria AS Categoría
FROM  productos AS p
  JOIN  marcas AS m
    ON  p.idMarca = m.idMarca
  JOIN  categorias AS c
    ON  p.idCategoria = c.idCategoria;

/* ejemplo */
SELECT
    idProducto AS ID,
    producto AS Producto,
    precio AS 'Precio de Contado',
    FORMAT( precio*1.05, 2 ) AS 'Precio de Lista',
    CONCAT(marca, ' (', m.idMarca, ')' ) AS Marca,
    CONCAT(categoria, ' (', c.idCategoria, ')' ) AS Categoría
FROM  productos AS p
  JOIN  marcas AS m
    ON  p.idMarca = m.idMarca
  JOIN  categorias AS c
    ON  p.idCategoria = c.idCategoria;

/* concat() "pega" contenido de columnas */
/* format() dar formato a números o cálculos numéricos*/