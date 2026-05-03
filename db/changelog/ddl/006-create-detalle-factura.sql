CREATE TABLE detalle_factura (
    id_detalle_factura SERIAL PRIMARY KEY,
    id_factura INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario NUMERIC(10,2) NOT NULL,
    subtotal NUMERIC(10,2) NOT NULL,

    CONSTRAINT fk_detalle_factura_factura
        FOREIGN KEY (id_factura)
        REFERENCES factura(id_factura),

    CONSTRAINT fk_detalle_factura_producto
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto)
);