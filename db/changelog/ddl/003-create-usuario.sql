CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    id_persona INT NOT NULL,
    id_rol INT NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    estado BOOLEAN DEFAULT TRUE,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_usuario_persona
        FOREIGN KEY (id_persona)
        REFERENCES persona(id_persona),

    CONSTRAINT fk_usuario_rol
        FOREIGN KEY (id_rol)
        REFERENCES rol(id_rol)
);