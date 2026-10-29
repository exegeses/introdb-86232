# Filtrado de registros
Cuándo ejecutamos una consulta sin ningún filtro, obtenemos un listado de todos los registros que hay dentro de una tabla.
Implementar un filtro significa generar una condición para obtener únicamente los registros que cumplan con dicha condición
Para implementar un filtro utilizamos la palabra reservada *WHERE*

```sql
-- obtener los productos de la marca "Asus" (13)
SELECT producto, precio
  FROM productos
  WHERE idMarca = 13; 
```
```sql
-- obtener los productos con un precio hasta 1000
SELECT producto, precio
  FROM productos
  WHERE precio <= 1000;
```
```sql
-- obtener nombre, apellido y teléfono de los clientes con apellido "González"
SELECT nombre, apellido, telefono
  FROM clientes
  WHERE apellido = "González";
```
```sql
-- obtener los productos con un precio hasta 1000 de la marca "Apple" (1)
SELECT producto, precio
FROM productos
WHERE precio <= 1000
  AND idMarca = 1;
```
```sql
-- obtener todos los productos con un precio entre 100 y 1000
SELECT producto, precio
FROM productos
WHERE precio >= 100
  AND precio <= 1000;
```
Uso de BETWEEN: cuándo estemos trabajando con rangos provenientes de una misma columna, podemos utilizar la palabra reservada *BETWEEN*
```sql
SELECT producto, precio
  FROM productos
  WHERE precio 
			BETWEEN 100 AND 1000
```