# consultas a través de una tabla pivot
-- obtener
-- producto, precio (productos)
-- razón social y teléfono (proveedores)
select producto, precio, razonsocial, telefono
from productos as p
join productos_proveedores as pp
  on p.idProducto = pp.idProducto
join proveedores as pv
  on pp.idProveedor = pv.idProveedor;

/* obtener
     producto, precio (productos)
     marca (marcas)
    razón social y teléfono (proveedores)
 */
 select producto, precio,
        marca,
        categoria,
        razonsocial, telefono
  from productos p
  join marcas m on m.idMarca = p.idMarca
  join categorias c on c.idCategoria = p.idCategoria
  join productos_proveedores pp on p.idProducto = pp.idProducto
  join proveedores p2 on p2.idProveedor = pp.idProveedor;
