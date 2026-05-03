# Investigación: Liquibase y control de cambios en bases de datos

## Asignatura
Modelado y Gestión de Base de Datos

## Estudiante
Eric Castañeda

---

## 1. ¿Qué es Liquibase?

Liquibase es una herramienta de **control de versiones para bases de datos** que permite gestionar, versionar y automatizar los cambios en la estructura y los datos de una base de datos de manera controlada.

A través de scripts llamados **changelogs**, Liquibase registra cada cambio aplicado a la base de datos, permitiendo que estos se ejecuten de forma ordenada, repetible y segura en diferentes entornos.

---

## 2. ¿Para qué sirve Liquibase?

Liquibase se utiliza principalmente para:

- Controlar los cambios realizados en una base de datos a lo largo del tiempo.
- Evitar ejecuciones repetidas o inconsistentes de scripts SQL.
- Facilitar el trabajo colaborativo en proyectos donde varias personas modifican la base de datos.
- Automatizar la creación y actualización de bases de datos en diferentes entornos.

En este taller, Liquibase garantiza que el profesor pueda **clonar el repositorio y reproducir exactamente la misma base de datos** sin configuración manual adicional.

---

## 3. Concepto de Changelog y Changeset

### Changelog

Un **changelog** es el archivo principal donde Liquibase define qué cambios deben aplicarse a la base de datos.  
En este proyecto, el changelog maestro es:

``
db/changelog/db.changelog-master.yaml

Este archivo organiza la ejecución de scripts, separando claramente cambios de estructura (DDL) y cambios de datos (DML).

### Changeset

Un **changeset** representa una unidad de cambio en la base de datos.  
Cada archivo SQL utilizado por Liquibase corresponde a uno o varios changesets que Liquibase registra internamente para evitar que se ejecuten más de una vez.

---

## 4. Diferencia entre DDL y DML

### DDL (Data Definition Language)

El DDL se utiliza para definir la **estructura** de la base de datos.  
Ejemplos de operaciones DDL:

- CREATE TABLE
- ALTER TABLE
- DROP TABLE

En el proyecto, los scripts DDL se encuentran en la carpeta:

db/changelog/ddl

### DML (Data Manipulation Language)

El DML se utiliza para manejar los **datos** dentro de las tablas.  
Ejemplos de operaciones DML:

- INSERT
- UPDATE
- DELETE

En el proyecto, los scripts DML se encuentran en la carpeta:

db/changelog/dml

---

## 5. Importancia del control de cambios en bases de datos

El control de cambios en bases de datos es fundamental porque:

- Permite mantener trazabilidad de los cambios realizados.
- Reduce errores al desplegar bases de datos en diferentes entornos.
- Garantiza consistencia entre desarrollo, pruebas y producción.
- Facilita la recuperación ante fallos o errores humanos.

Liquibase automatiza este control mediante tablas internas como `databasechangelog`, donde se registra el historial de ejecuciones.

---

## 6. Uso de Liquibase con Docker

En este taller, Liquibase se ejecuta dentro de un **contenedor Docker**, lo cual ofrece varias ventajas:

- No es necesario instalar Liquibase localmente.
- El entorno es consistente para todos los usuarios.
- El profesor puede ejecutar el proyecto sin configuraciones adicionales.

Docker y Liquibase trabajan juntos para garantizar que el proyecto sea **totalmente reproducible**, que es uno de los principales requisitos del taller.

---

## 7. Conclusión

Liquibase es una herramienta clave para la gestión de cambios en bases de datos modernas.  
Su integración con Docker permite crear procesos automatizados, reproducibles y alineados con buenas prácticas profesionales.

En este proyecto, Liquibase permitió separar claramente la estructura y los datos, mantener integridad referencial y asegurar una correcta ejecución del modelo de base de datos definido para el taller.