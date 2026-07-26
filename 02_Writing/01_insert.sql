/*
INSERT
Lección 11.1: https://youtu.be/OuJerKzV5T0?t=10370
*/

--- Insertar nuevos registros en una tabla
La mejor práctica es insertar valores especificando nombres de columnas:  
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

Insertar valores para TODAS las columnas generalmente se considera una mala práctica, pues puede dejar de funcionar si se modifican las columnas. El orden de valores debe ser el mismo que orden de las columnas. 
INSERT INTO table_name
VALUES (value1, value2, value3, ...);

- Inserta un registro con identificador, nombre y apellido en la tabla "users"
INSERT INTO users (user_id, name, surname) VALUES (8, 'María', 'López')

- Inserta un registro con nombre y apellido en la tabla "users"
INSERT INTO users (name, surname) VALUES ('Paco', 'Pérez')

- Inserta un registro con identificador no correlativo, nombre y apellido en la tabla "users"
INSERT INTO users (user_id, name, surname) VALUES (11, 'El', 'Merma')

- Insertar valores para todas las columnas
INSERT INTO users 
VALUES (7,'Alejo', 'Gutierrez', 29, '1996-04-06', 'alejo@gmail.com');

- Insertar múltiples registros 
INSERT INTO users (user_id, name, username, age, init_date, email)
VALUES
(10,'Daniel', 'Jimenez', 29, '1996-04-06', 'daniel@gmail.com'),
(11,'Rosa', 'Gomez', 29, '1985-03-24', 'rosa@gmail.com'); 
