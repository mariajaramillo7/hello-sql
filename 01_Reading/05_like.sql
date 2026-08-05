/*
LIKE
Lección 9.4: https://youtu.be/OuJerKzV5T0?t=6894
*/

--- Busca un patrón de texto específico en una columna.
Se usa con WHERE para encontrar coincidencias parciales usando wildcards (comodines).
 Si no usas wildcard, solo da un resultado cuando hay un exact match.

 Wildcards: se usa para sustituir uno o más caracteres en un string. Se pueden combinar.
 %	Represents zero, one or more characters
_	Represents a single character
[]	Represents any single character within the brackets → no sirve en PostgreSQL ni MySQL
^	Represents any character not in the brackets → no sirve en PostgreSQL ni MySQL
-	Represents any single character within the specified range → no sirve en PostgreSQL ni MySQL
{}	Represents any escaped character ** → solo en Oracle databases 

Wildcards de MS Access son diferentes: 
*	Represents zero or more characters	→ bl* finds bl, black, blue, and blob
?	Represents a single character	→ h?t finds hot, hat, and hit
[]	Represents any single character within the brackets	→ h[oa]t finds hot and hat, but not hit
!	Represents any character not in the brackets	→ h[!oa]t finds hit, but not hot and hat
-	Represents any single character within the specified range	→ c[a-b]t finds cat and cbt
#	Represents any single numeric character	→ 2#5 finds 205, 215, 225, 235, 245, 255, 265, 275, 285, and 295
 
 
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;

- Obtiene todos datos de la tabla "users" que contienen un email con el texto "gmail.com" en su parte final
SELECT * FROM users WHERE email LIKE '%gmail.com';

- Obtiene todos datos de la tabla "users" que contienen un email con el texto "sara" en su parte inicial
SELECT * FROM users WHERE email LIKE 'sara%';

- Obtiene todos datos de la tabla "users" que contienen un email una arroba
SELECT * FROM users WHERE email LIKE '%@%';

- Return all customers that starts with 'a' or starts with 'b':
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%';

- Select all records where the value of the City column does NOT start with the letter "a".
SELECT * FROM Customers 
 WHERE City NOT LIKE 'a%';

- Return all customers that starts with "a" and are at least 3 characters in length:
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';

- Return all customers starting with either b, s, or p
SELECT * FROM Customers
WHERE CustomerName LIKE '[bsp]%';

- Return all customers starting with "a", "b", "c", "d", "e" or "f":
SELECT * FROM Customers
WHERE CustomerName LIKE '[a-f]%';

- Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
SELECT * FROM Customers
WHERE City LIKE '[!acf]%';
