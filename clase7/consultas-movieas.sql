# práctica:
-- obtener titulo, genero y anio
select titulo, genero, anio
  from peliculas as p
  join generos as g
    on p.idGenero = g.idGenero;

-- obtener titulo, nombre y apellido (director)
select titulo, concat(nombre, ' ', apellido) as director
  from pelicuas as p
  join directores as d
    on p.iddirector = d.iddirector;

-- obtener titulo, nombre y apellido (director), pais de origewn
select
        titulo,
        concat(nombre, ' ', apellido) as director,
        pais as 'País de origen'
from peliculas p
 join directores as d
  on p.iddirector = d.iddirector
 join paises ps
  on p.idPaisOrigen = pa.idPais;

-- listar todas las películas en las que aparece Vigo Mortensen
select titulo, genero, anio
from peliculas p
join peliculas_actores pa
  on p.idPelicula = pa.idPelicula
JOIN generos g
     on p.idgenero = g.idgenero
WHERE idActor = 13;
