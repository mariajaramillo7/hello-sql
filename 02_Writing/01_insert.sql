/*
INSERT
Lección 11.1: https://youtu.be/OuJerKzV5T0?t=10370
*/

--- Insertar nuevos registros en una tabla
Insertar valores para TODAS las columnas - orden de valores debe ser el mismo que orden de las columnas.
INSERT INTO table_name
VALUES (value1, value2, value3, ...);

Insertar valores especificando nombres de columnas:  
INSERT INTO table_name
VALUES (value1, value2, value3, ...); 

- Inserta un registro con identificador, nombre y apellido en la tabla "users"
INSERT INTO users (user_id, name, surname) VALUES (8, 'María', 'López')

- Inserta un registro con nombre y apellido en la tabla "users"
INSERT INTO users (name, surname) VALUES ('Paco', 'Pérez')

- Inserta un registro con identificador no correlativo, nombre y apellido en la tabla "users"
INSERT INTO users (user_id, name, surname) VALUES (11, 'El', 'Merma')
