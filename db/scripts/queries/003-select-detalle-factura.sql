SELECT
    f.id_factura,
    pr.nombre AS producto,
    d.cantidad,
    d.precio_unitario,
    d.subtotal
FROM detalle_factura d
INNER JOIN factura f ON d.id_factura = f.id_factura
INNER JOIN producto pr ON d.id_producto = pr.id_producto;
