-- Usar la base de datos
USE restaurant;

-- Crear la tabla de Mesas
CREATE TABLE Mesas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_mesa INT NOT NULL,
    capacidad INT NOT NULL
);

-- Crear la tabla de Reservas
CREATE TABLE Reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(255) NOT NULL,
    telefono_cliente VARCHAR(20),
    email_cliente VARCHAR(255),
    fecha_reserva DATETIME NOT NULL,
    num_personas INT NOT NULL,
    mesa_id INT,
    FOREIGN KEY (mesa_id) REFERENCES Mesas(id)
);

-- Crear la tabla de credenciales admin
CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(255) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL
);
