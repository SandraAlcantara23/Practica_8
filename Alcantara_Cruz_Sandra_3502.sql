CREATE DATABASE examen_DDL;
USE examen_DDL;

CREATE TABLE Clientes(
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR (100) NOT NULL,
ap1 VARCHAR (100) NOT NULL,
ap2 VARCHAR (100) NOT NULL,
email VARCHAR (100) NOT NULL

);

CREATE TABLE Pedidos(
id_Pedido INT PRIMARY KEY AUTO_INCREMENT,
fecha_Pedido DATE,
id_Cliente INT,
FOREIGN KEY (id_Cliente) REFERENCES clientes(id_Cliente)
);
-- Añadir la columna telefono
ALTER TABLE clientes ADD telefono INT;

-- Eliminar la columna email
ALTER TABLE clientes DROP COLUMN email;

-- Elimina la tabla Pedidos
DROP TABLE Pedidos;
