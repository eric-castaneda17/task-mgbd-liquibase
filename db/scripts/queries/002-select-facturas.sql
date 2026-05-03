SELECT
    f.id_factura,
    f.fecha,
    f.total,
    u.username
FROM factura f
INNER JOIN usuario u ON f.id_usuario = u.id_usuario;