/*
GROUP BY
Lección 10.11: https://youtu.be/OuJerKzV5T0?t=8960
*/

---Agrupa filas que tienen los mismos valores en filas de resumen 
Casi siempre se usa junto con aggregate functions como COUNT(), MAX(), MIN(), SUM(), AVG(), to perform calculations on each group.

SELECT column1, aggregate_function(column2), column3, ...
FROM table_name
WHERE condition
GROUP BY column1, column3
ORDER BY column_name;

-- Agrupa los resultados por edad diferente
SELECT MAX(age) FROM users GROUP BY age

-- Agrupa los resultados por edad diferente y cuenta cuantos registros existen de cada una
SELECT COUNT(age), age FROM users GROUP BY age

-- Agrupa los resultados por edad diferente, cuenta cuantos registros existen de cada una y los ordena
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC

-- Agrupa los resultados por edad diferente mayor de 15, cuenta cuantos registros existen de cada una y los ordena
SELECT COUNT(age), age FROM users WHERE age > 15 GROUP BY age ORDER BY age ASC
