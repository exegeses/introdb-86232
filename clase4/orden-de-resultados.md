# Orden de resultados de una consulta
Cuándo obtenemos una grilla de resultados, estos **siempre** vienen ordenados de manera *predeterminada*
Podemos cambiar el orden de los resultados con el modificador *ORDER BY*

```sql
SELECT * 
  FROM marcas
  ORDER BY id_marca;

-- obtener razón social, cuit y teléfono
-- orden ordenado por razón social descendente
SELECT razonSocial, cuit, telefono
  FROM proveedores
  ORDER BY razonSocial DESC;
```


Sintaxis hasta ahora:
```sql
    SELECT [*, campo, campo]  
       FROM [tabla]  
       ORDER BY [campo];  
```