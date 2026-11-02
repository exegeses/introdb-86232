# consultas con relaciones entre tablas
Cuándo queramos obtener datos provenientes de dos o más tablas, debemos implementar relaciones.
Tenemos dos técnicas para lograrlo.

1. Relación implícita
2. Relación explícita (JOIN)

## 1. Relación implícita
Para lograr esta técnica, debemos mencionar después del *FROM* el listado de las tablas que intervienen en esta consulta
Y luego mediante un filtro igualamos la clave foránea de la tabla principal con la clave primaria de la segunda tabla.

Sintaxis: 
```sql
SELECT campoTabla1, campoTabla1, campoTabla2
FROM tabla1, tabla2
WHERE tabla1.fk = tabla2.pk;

SELECT campoTabla1, campoTabla1, campoTabla2
FROM tabla1, tabla2, tabla3
WHERE tabla1.fk = tabla2.pk
  AND tabla1.fk = tabla3.pk;
```

Ejemplo práctico: 
```sql
SELECT producto, precio, marca
FROM productos, marcas
WHERE productos.idMarca = marcas.idMarca;

SELECT producto, precio, marca, categoria
FROM productos, marcas, categorias
WHERE productos.idMarca = marcas.idMarca
  AND productos.idCategoria = categorias.idCategoria;

SELECT titulo, genero
FROM libros, generos
WHERE libros.idGenero = generos.idGenero;
```

## 2. Relación explícita (JOIN)
Para lograr esta relación, no mencionamos en el listado de tablas (después del *FROM*) todas las tablas necesarias.
Sólo mencionamos una única tabla.
Para mencionar la otra tabla utilizamos la palabra reservada *JOIN*
Finalmente mediante la palabra reservada *ON* igualamos la clave foránea de la primera tabla con la clave primaria de la segunda tabla


Sintaxis:
```sql
SELECT campoTabla1, campoTabla1, campoTabla2
FROM tabla1
 JOIN tabla2
   ON tabla1.fk = tabla2.pk;

SELECT campoTabla1, campoTabla1, campoTabla2, campoTabla3
FROM tabla1
 JOIN tabla2
   ON tabla1.campoFK = tabla2.campoPK
 JOIN tabla3
   ON tabla1.campoFK = tabla3.campoPK;
```

Ejemplo práctico: 
```sql
SELECT producto, precio, marca
FROM productos
JOIN marcas
  ON productos.idMarca = marcas.idMarca;

SELECT producto, precio, marca, categoria
FROM productos
 JOIN marcas
  ON productos.idMarca = marcas.idMarca
 JOIN categorias
  ON productos.idCategoria = categorias.idCategoria;

SELECT titulo, genero, anio, editorial
FROM libros
 JOIN generos
   ON libros.idGenero = generos.idGenero
 JOIN editoriales
   ON libros.idEditorial = editoriales.idEditorial;
```