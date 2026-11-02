# Funciones de fecha en SQL
Si queremos realizar consultas que utilicen como filtro fechas o cálculos entre fechas, SQL tiene varias funciones para lograrlo

Función YEAR()
```sql
SELECT apellido, nombre, fechaAlta
FROM clientes
WHERE YEAR(fechaAlta) = 2024;
```
Función MONTH()
```sqlSELECT apellido, nombre, fechaAlta
FROM clientes
WHERE MONTH(fechaAlta) = 11;
```