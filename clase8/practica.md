# Pactica integradora
1. Consultas a 2 tablas (JOIN)
```sql
-- Obtener el título de la película, el año y su país de origen
SELECT titulo, anio, pais
FROM peliculas AS p
JOIN paises AS pa
  ON p.idPaisOrigen = pa.idPais;

-- Obtener el nombre completo de cada actor y el país donde nació
SELECT CONCAT(nombre, ' ', apellido) AS actor, pais
FROM actores AS a
JOIN paises AS pa
  ON a.idPais = pa.idPais;
```

2. Consultas a 3 tablas
```sql
-- Obtener título de la película, género y nombre completo del director
SELECT 
    titulo, 
    genero, 
    CONCAT(nombre, ' ', apellido) AS director
FROM peliculas AS p
JOIN generos AS g
  ON p.idGenero = g.idGenero
JOIN directores AS d
  ON p.idDirector = d.idDirector;

-- Listar el título de cada película junto con los actores que trabajan en ella
-- (Acá pasamos por la tabla intermedia peliculas_actores)
SELECT 
    titulo, 
    CONCAT(nombre, ' ', apellido) AS actor
FROM peliculas AS p
JOIN peliculas_actores AS pa
  ON p.idPelicula = pa.idPelicula
JOIN actores AS a
  ON pa.idActor = a.idActor;
```

3. Consultas con filtros (WHERE)
```sql
-- Películas de 'Ciencia Ficción' con rating mayor o igual a 8.5
SELECT titulo, anio, rating, genero
FROM peliculas AS p
JOIN generos AS g
  ON p.idGenero = g.idGenero
WHERE genero = 'Ciencia Ficción'
  AND rating >= 8.5;

-- Películas en las que actuó 'Robert De Niro' (filtrando por nombre y apellido, sin saber su ID)
SELECT titulo, anio
FROM peliculas AS p
         JOIN peliculas_actores AS pa
              ON p.idPelicula = pa.idPelicula
         JOIN actores AS a
              ON pa.idActor = a.idActor
WHERE a.nombre = 'Robert'
  AND a.apellido = 'De Niro';

-- Películas dirigidas por 'Christopher Nolan' estrenadas después del año 2009
SELECT titulo, anio, CONCAT(nombre, ' ', apellido) AS director
FROM peliculas AS p
JOIN directores AS d
  ON p.idDirector = d.idDirector
WHERE nombre = 'Christopher' 
  AND apellido = 'Nolan'
  AND anio > 2009;
```

