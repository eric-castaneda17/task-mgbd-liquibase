# Taller Investigativo – Modelado y Gestión de Base de Datos

## Asignatura
Modelado y Gestión de Base de Datos

## Estudiante
Eric Mauricio Castañeda Murcia

## Corte
3

---

## Objetivo del taller

Desarrollar un proyecto práctico que permita al estudiante diseñar, implementar y versionar una base de datos relacional utilizando **PostgreSQL**, gestionando los cambios mediante **Liquibase** y ejecutando el entorno completo con **Docker**.  

El proyecto debe ser completamente **reproducible**, de modo que el profesor pueda clonar el repositorio, levantar los contenedores y ejecutar las migraciones sin configuración adicional.

---

## Tecnologías utilizadas

- PostgreSQL
- Liquibase
- Docker
- Docker Compose
- Git y GitHub

---

## Modelo de datos

El modelo de base de datos utiliza **exclusivamente** las siguientes tablas, según las condiciones del taller:

- `persona`
- `rol`
- `usuario`
- `producto`
- `factura`
- `detalle_factura`


El modelo implementa llaves primarias y foráneas para garantizar la **integridad referencial** entre las entidades.

---

## Estructura del proyecto

```text
task-mgbd-liquibase/
├── README.md
├── docker-compose.yml
├── liquibase.properties
├── db/
│   ├── changelog/
│   │   ├── db.changelog-master.yaml
│   │   ├── ddl/
│   │   └── dml/
│   └── scripts/
│       └── queries/
└── docs/
```

### Organización de carpetas

- **ddl:** scripts para la creación de la estructura de la base de datos.
- **dml:** scripts para inserción, actualización y eliminación de datos.
- **queries:** consultas SQL de validación.

---

## Requisitos para la ejecución

Para ejecutar el proyecto es necesario contar con:

- Docker
- Docker Compose
- Git

No se requiere instalar manualmente PostgreSQL ni Liquibase.

---

## Ejecución del proyecto

### Clonar el repositorio

git clone https://github.com/TU-USUARIO-GITHUB/task-mgbd-liquibase.git
cd task-mgbd-liquibase

### Levantar los contenedores
docker compose up -d

### Ejecutar Liquibase
- Validar la configuración:
docker compose run --rm liquibase --defaults-file=/liquibase/liquibase.properties validate

- Ejecutar las migraciones:
docker compose run --rm liquibase --defaults-file=/liquibase/liquibase.properties update

Liquibase ejecuta primero las migraciones DDL y posteriormente las DML, según lo definido en el changelog maestro.

## Eliminación de datos (DELETE)

Durante el desarrollo se identificó que las tablas se encuentran relacionadas mediante llaves foráneas activas.
Para evitar violaciones de integridad referencial, no se ejecutan operaciones DELETE sobre registros que se encuentran referenciados por otras tablas.
Esta decisión se toma de manera intencional.

## Verificación de la base de datos

### Acceder a PostgreSQL
docker compose exec db psql -U postgres -d mgbd_liquibase

### Listar tablas
\dt

### Ejecutar consultas de validación
docker compose exec db psql -U postgres -d mgbd_liquibase -f db/scripts/queries/001-select-usuarios.sql
docker compose exec db psql -U postgres -d mgbd_liquibase -f db/scripts/queries/002-select-facturas.sql
docker compose exec db psql -U postgres -d mgbd_liquibase -f db/scripts/queries/003-select-detalle-factura.sql

