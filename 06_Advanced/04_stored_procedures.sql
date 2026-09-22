/*
STORED PROCEDURES
Lección 18.4: https://youtu.be/OuJerKzV5T0?t=20033
*/

Es como una query que guardamos en favoritos - para querys que se usan mucho. 

CREATE PROCEDURE procedure_name
  @param1 datatype,
  @param2 datatype
AS
BEGIN
  -- SQL_statements to be executed
  SELECT column1, column2
  FROM table_name
  WHERE columnN = @paramN;
END;

To run a stored procedure, use the EXEC statement:
EXEC procedure_name @param1 = 'value1', @param2 = 'value2';

To delete a stored procedure, use the DROP PROCEDURE statement:
DROP PROCEDURE procedure_name; 

Tip: To ensure that DROP PROCEDURE does not return an error, if the procedure is missing, add the IF EXISTS clause:
DROP PROCEDURE IF EXISTS procedure_name; 

-- Crea un procedimiento almacenado llamado "p_all_users" que obtiene todos los datos de "users"
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END//

-- Invoca al procedimiento almacenado llamado "p_all_users"
CALL p_all_users;

-- Crea un procedimiento almacenado llamado "p_age_users" parametrizado para
-- obtener usuarios con edad variable
Siempre darle un nombre distinto al parámetro (e.g age_param) al campo.
	
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END//

-- Invoca al procedimiento almacenado llamado "p_age_users" con un parámetro de valor 30
CALL p_age_users(30);

-- Elimina el procedimiento almacenado llamado "p_age_users"
DROP PROCEDURE p_age_users;
