-- Eliminar la base de datos si ya existe
DROP DATABASE IF EXISTS empresa;

-- Crear la base de datos
CREATE DATABASE empresa;

-- Seleccionar la base de datos
USE empresa;

-- Tabla de cargos
CREATE TABLE cargo (
    id_cargo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2)
);

-- Tabla de empleados con datos independientes
CREATE TABLE empleados (
    Id_empl INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10,2)
);

-- Insertar empleados
INSERT INTO empleados (nombre, cargo, salario) VALUES
('Juan Pérez', 'Gerente', 7500000),
('Ana Gómez', 'Desarrollador', 6000000),
('Luis Castro', 'Proyectos', 10000000);

-- Insertar cargos
INSERT INTO cargo (nombre_cargo, salario) VALUES 
('Gerente', 500000),
('Asistente', 250000),
('Desarrollador', 400000);

-- Consultas y operaciones
-- Seleccionar todos los cargos
SELECT * FROM cargo;
-- Seleccionar empleados que ganan más de 7,000,000
SELECT * FROM empleados WHERE salario > 7000000;
-- Actualizar el salario de un empleado (Ana Gómez) a 6,500,000
UPDATE empleados SET salario = 6500000 WHERE nombre = 'Ana Gómez';
-- Eliminar un empleado (Luis Castro)
DELETE FROM empleados WHERE nombre = 'Luis Castro';
-- Seleccionar empleados con el cargo 'Desarrollador'
SELECT * FROM empleados WHERE cargo = 'Desarrollador';
-- Insertar nuevo empleado 'Marta López' con cargo de 'Asistente' y salario individual de 3,000,000
INSERT INTO empleados (nombre, cargo, salario) VALUES ('Marta López', 'Asistente', 3000000);
