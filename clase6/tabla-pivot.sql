# creación de tabla Bot para relacionar productos y proveedores
create table productos_proveedores
(
    idProducto smallint unsigned not null,
    idProveedor smallint unsigned not null,
    foreign key (idProducto) references productos (idProducto),
    foreign key (idProveedor) references proveedores (idProveedor)
);