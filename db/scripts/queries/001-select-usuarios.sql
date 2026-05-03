SELECT
    p.nombres,
    p.apellidos,
    u.username,
    r.nombre AS rol
FROM usuario u
INNER JOIN persona p ON u.id_persona = p.id_persona
INNER JOIN rol r ON u.id_rol = r.id_rol;