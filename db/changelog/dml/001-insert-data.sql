-- PERSONAS
INSERT INTO persona (nombres, apellidos, tipo_documento, numero_documento, correo)
VALUES
('Juan', 'Perez', 'CC', '1001', 'juan.perez@mail.com'),
('Maria', 'Gomez', 'CC', '1002', 'maria.gomez@mail.com');

-- ROLES
INSERT INTO rol (nombre, descripcion)
VALUES
('ADMIN', 'Administrador del sistema'),
('CLIENTE', 'Cliente del sistema');

-- USUARIOS
INSERT INTO usuario (id_persona, id_rol, username, password)
VALUES
(1, 1, 'admin', 'admin123'),
(2, 2, 'cliente', 'cliente123');

-- PRODUCTOS
INSERT INTO producto (nombre, descripcion, precio, stock)
VALUES
('Laptop', 'Portatil 14 pulgadas', 2500000, 10),
('Mouse', 'Mouse inalambrico', 50000, 50);

-- FACTURAS
INSERT INTO factura (id_usuario, total)
VALUES
(2, 2550000);

-- DETALLE FACTURA
INSERT INTO detalle_factura (id_factura, id_producto, cantidad, precio_unitario, subtotal)
VALUES
(1, 1, 1, 2500000, 2500000),
(1, 2, 1, 50000, 50000);
``