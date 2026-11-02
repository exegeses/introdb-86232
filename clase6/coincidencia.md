# Consultas con operador de coincidencia
En algunos casos vamos a querer obtener registros que tengan como filtro una palabra o fragmento de una palabra.
Por ejemplo obtener todos los productos que en la columna descripción contengan 'inalámbrico'

```sql
SELECT producto, descripcion
FROM productos
WHERE descripcion = 'inalámbrico';
```
Esta consulta no tiene ningún resultado ya que busca que en el campo descripción diga únicamente "inalámbrico".

Si queremos obtener los registros que *contengan* una palabra o fragmento de una palabra, debemos reemplazar el símbolo de igual por la palabra reservada *LIKE* combinado con el símbolo de **%** que puede ocupar uno, varios o incluso ningún carácter.

```sql
SELECT producto, descripcion
FROM productos
WHERE descripcion LIKE '%inalambrico%';
```