-- PARTE 2: Ejercicio de práctica con base de datos 'Biblioteca'

-- Seleccionar base de datos
USE BibliotecaDB;

-- a) Actualizar disponibilidad de un libro (marcar como no disponible)
UPDATE Libros
SET Disponible = 0
WHERE Titulo = 'Cien años de soledad';

-- b) Actualizar la fecha de devolución de un préstamo
UPDATE Prestamos
SET Fecha_Devolucion = '2024-08-25'
WHERE ID_Prestamo = 3;

-- c) Eliminar un libro de la base de datos
DELETE FROM Libros
WHERE Titulo = 'Tokio Blues';

-- Consultas para validar la información

-- a) Seleccionar todos los libros
USE BibliotecaDB;
SELECT * FROM Libros;

-- b) Seleccionar todos los autores
USE BibliotecaDB;
SELECT * FROM Autores;

-- c) Seleccionar el libro de Gabriel García Márquez
-- c) Seleccionar el libro de Gabriel García Márquez
USE BibliotecaDB;
SELECT * FROM Libros 
WHERE ID_Autor = 1;

-- d) Mostrar los libros devueltos en el mes 8 del año 2024
USE BibliotecaDB;
SELECT * FROM Prestamos
WHERE MONTH(Fecha_Devolucion) = 8 AND YEAR(Fecha_Devolucion) = 2024;
