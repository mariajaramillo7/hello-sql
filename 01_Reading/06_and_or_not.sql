/*
NOT, AND, OR
Lección 9.5: https://youtu.be/OuJerKzV5T0?t=7194
*/

--- Filtran registros basados en una o más condiciones.
AND: muestra en registro si TODAS las condiciones son TRUE 
  SELECT _column1_, _column2, ..._  
  FROM _table_name_  
  WHERE _condition1_ AND _condition2_ AND _condition3 ..._;

- Seleccionar todos los Customers donde Country es "Brazil" y City es "Rio de Janeiro" + CustomerID es mayor de 50:
SELECT * FROM Customers
WHERE Country = 'Brazil'
AND City = 'Rio de Janeiro'
AND CustomerID > 50;
  
OR: muestra un registro si CUALQUIER de las condiciones es TRUE
  SELECT _column1_, _column2, ..._  
  FROM _table_name_  
  WHERE _condition1_ OR _condition2_ OR _condition3 ..._;

- Seleccionar todos los registros donde City es "Berlin", o CustomerName empiece con "G", o Country es "Norway":
SELECT * FROM Customers
WHERE City = 'Berlin' OR CustomerName LIKE 'G%' OR Country = 'Norway';

NOT:  invierte una condición → excluye datos que no cumplen con un criterio específico
  SELECT _column1_, _column2, ..._  
  FROM _table_name_  
  WHERE NOT _condition_;

- NOT IN
- NOT LIKE
- NOT BETWEEN
  
- Obtiene todos datos de la tabla "users" con email distinto a sara@gmail.com
SELECT * FROM users WHERE NOT email = 'sara@gmail.com';

--- Se pueden combinar 
- Obtiene todos datos de la tabla "users" con email distinto a sara@gmail.com y edad igual a 15
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' AND age = 15;

- Obtiene todos datos de la tabla "users" con email distinto a sara@gmail.com o edad igual a 15
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15;

- Select all Spanish customers that starts with either "G" or "R":
SELECT * FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

-Select customers that does not start with the letter 'A':
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';

