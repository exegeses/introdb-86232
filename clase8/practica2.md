# Práctica integradora 2

4. ¿Qué es GROUP BY? (Explicación simple)
   Idea clave: Imagina que tienes una pila de fichas de películas mezcladas y las separas en pilas según una característica en común (por ejemplo, una pila por cada género, o una pila por cada director).

GROUP BY arma esos grupos para que después puedas aplicar una función de resumen sobre cada montón: contar cuántos hay (COUNT), sumar (SUM), sacar un promedio (AVG), o buscar el máximo/mínimo (MAX / MIN).

Regla de oro: Todo lo que pongas en el SELECT que no sea un cálculo (COUNT, AVG, etc.), tiene que estar escrito en el GROUP BY.

Consultas con GROUP BY (sin HAVING)
Es como juntar los productos en cajas separadas según una etiqueta (ej: una caja por cada marca, o una caja por cada categoría) para poder sacar un cálculo por cada caja (cuántos hay, cuánto valen en total, cuál es el promedio).

```sql
select count(*) from productos;
select count(idMarca) from productos;
select sum(idMarca) from productos;
-- select idMarca, sum(idMarca) from productos;
select idMarca, count(idMarca)
from productos
where idMarca = 1;

select idMarca, count(idMarca)
from productos
group by idMarca;

-- 1. Contar cuántos productos tiene cada marca en el catálogo
SELECT
   marca,
   COUNT(idProducto) AS cantidad_productos
FROM productos AS p
        JOIN marcas AS m
             ON p.idMarca = m.idMarca
GROUP BY marca;

-- 2. Calcular el precio promedio de los productos por cada categoría
SELECT
   categoria,
   ROUND(AVG(precio), 2) AS precio_promedio
FROM productos AS p
        JOIN categorias AS c
             ON p.idCategoria = c.idCategoria
GROUP BY categoria;
```

```sql
-- Contar cuántas películas hay de cada género
SELECT 
    genero, 
    COUNT(idPelicula) AS cantidad_peliculas
FROM peliculas AS p
JOIN generos AS g
  ON p.idGenero = g.idGenero
GROUP BY genero;

-- Calcular el rating promedio de las películas de cada director
SELECT 
    CONCAT(nombre, ' ', apellido) AS director, 
    ROUND(AVG(rating), 2) AS rating_promedio
FROM peliculas AS p
JOIN directores AS d
  ON p.idDirector = d.idDirector
GROUP BY d.idDirector, nombre, apellido;

-- Ver cuál es la película más larga (duración máxima) por cada país de origen
SELECT 
    pais, 
    MAX(duracion) AS duracion_maxima
FROM peliculas AS p
JOIN paises AS pa
  ON p.idPaisOrigen = pa.idPais
GROUP BY pais;
```

5. ¿Qué es HAVING? (Explicación simple)
   Idea clave: WHERE y HAVING sirven para filtrar, pero actúan en momentos distintos:

WHERE filtra filas individuales antes de armar los grupos (ej: "solo películas estrenadas después del 2000").

HAVING filtra los grupos ya armados después del GROUP BY (ej: "mostrame solo los géneros que tengan más de 3 películas").

Regla práctica: Si queremos filtrar usando el resultado de un COUNT(), AVG(), SUM(), MAX() o MIN(), siempre va en el HAVING (nunca en el WHERE).

HAVING (En 2 líneas)
Es un filtro para las cajas ya armadas. Mientras que WHERE filtra productos sueltos antes de agrupar, HAVING descarta cajas enteras después de contarlas o promediarlas (por eso siempre usa COUNT, AVG, SUM, etc.).
```sql
-- 1. Mostrar solo las marcas que tienen 3 o más productos cargados
SELECT 
    marca, 
    COUNT(idProducto) AS cantidad_productos
FROM productos AS p
JOIN marcas AS m
  ON p.idMarca = m.idMarca
GROUP BY marca
HAVING COUNT(idProducto) >= 3;

-- 2. Mostrar solo las categorías cuyo precio promedio supera los 800
SELECT 
    categoria, 
    ROUND(AVG(precio), 2) AS precio_promedio
FROM productos AS p
JOIN categorias AS c
  ON p.idCategoria = c.idCategoria
GROUP BY categoria
HAVING AVG(precio) > 800;
```

Consultas con HAVING
```sql
-- Mostrar solo los géneros que tienen más de 3 películas cargadas
SELECT 
    genero, 
    COUNT(idPelicula) AS cantidad_peliculas
FROM peliculas AS p
JOIN generos AS g
  ON p.idGenero = g.idGenero
GROUP BY genero
HAVING COUNT(idPelicula) > 3;

-- Mostrar los directores que tienen un promedio de rating mayor o igual a 8.5
SELECT 
    CONCAT(nombre, ' ', apellido) AS director, 
    ROUND(AVG(rating), 2) AS rating_promedio
FROM peliculas AS p
JOIN directores AS d
  ON p.idDirector = d.idDirector
GROUP BY d.idDirector, nombre, apellido
HAVING AVG(rating) >= 8.5;

-- Mostrar los actores que participan en 2 o más películas
SELECT 
    CONCAT(nombre, ' ', apellido) AS actor, 
    COUNT(pa.idPelicula) AS cantidad_peliculas
FROM actores AS a
JOIN peliculas_actores AS pa
  ON a.idActor = pa.idActor
GROUP BY a.idActor, nombre, apellido
HAVING COUNT(pa.idPelicula) >= 2;
```

