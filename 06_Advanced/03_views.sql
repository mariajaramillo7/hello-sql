/*
VIEWS
Lección 18.3: https://youtu.be/OuJerKzV5T0?t=19663
*/

Representación visual de una o más tablas - resultado de una consulta en formato tabla. 
  Para simplificar, revisar datos de forma rápida. Crear tabla intermedia que me muestra datos (pero no se crea la tabla como tal)
  También no es para todos los casos, sí eg para cosas que consulto habitualmente.
  
-- Crea una vista llamada "v_adult_users" con los nombres y edades de usuarios de la table "users"
-- que tienen una edad igual o mayor a 18 años.
CREATE VIEW v_adult_users AS
SELECT name, age
FROM users
WHERE age >= 18;

SELECT * FROM v_adult_users;

-- Elimina la vista llamada "v_adult_users"
DROP VIEW v_adult_users;
