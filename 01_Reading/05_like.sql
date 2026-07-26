/*
LIKE
Lección 9.4: https://youtu.be/OuJerKzV5T0?t=6894
*/

--- Busca un patrón de texto específico en una columna.
Se usa con WHERE para encontrar coincidencias parciales usando wildcards (comodines).
 - Signo de porcentaje (%): Representa cero, uno o varios caracteres
 - Guion bajo (_): Representa un solo carácter exacto
 
- Obtiene todos datos de la tabla "users" que contienen un email con el texto "gmail.com" en su parte final
SELECT * FROM users WHERE email LIKE '%gmail.com';

- Obtiene todos datos de la tabla "users" que contienen un email con el texto "sara" en su parte inicial
SELECT * FROM users WHERE email LIKE 'sara%';

- Obtiene todos datos de la tabla "users" que contienen un email una arroba
SELECT * FROM users WHERE email LIKE '%@%';
