# Consultas Left & Right JOIN
SELECT hotel, empleado, sector
FROM hoteles h
JOIN empleados e
  ON h.idHotel = e.idHotel;

-- hoteles que no tienen "mantenimiento"
SELECT hotel, empleado, sector
FROM hoteles h
JOIN empleados e
  ON h.idHotel = e.idHotel
WHERE sector != 'mantenimiento';


-- empleados que no tienen hotel asignado
SELECT hotel, empleado, sector
FROM hoteles h
  RIGHT JOIN empleados e
  ON h.idHotel = e.idHotel;
