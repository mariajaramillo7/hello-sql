/*
UUPDATE
Lección 11.2: https://youtu.be/OuJerKzV5T0?t=10621
*/

---- Actualiza o modifica uno o más registros.
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

WHERE: especifica cuáles registros deben ser actualizados. OJO: Si la omites, se actualizan TODOS los registros. SIEMPRE usar WHERE, es muy raro que tengas que actualizar TODOS.

-- Estable el valor 21 para la edad del registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = 21 WHERE user_id = 11

-- Estable el valor 20 para la edad del registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = 20 WHERE user_id = 11

-- Estable edad y una fecha para registro de la tabla "users" con identificador igual a 11
UPDATE users SET age = 20, init_date = '2020-10-12' WHERE user_id = 11

-- Actualizar ContactName a 'Juan' para todos los registros donde el país es Mexico
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';
