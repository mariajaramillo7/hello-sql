/*
ALTER TABLE
Lección 13.9: https://youtu.be/OuJerKzV5T0?t=12461
*/

The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

Common ALTER TABLE operations are:

    Add column - Adds a new column to a table
    Drop column - Deletes a column in a table
    Rename column - Renames a column
    Modify column - Changes the data type, size, or constraints of a column
    Add constraint - Adds a new constraint
    Rename table - Renames a table

  
/*
ADD
Lección 13.10: https://youtu.be/OuJerKzV5T0?t=12578
*/

  ALTER TABLE table_name
ADD column_name datatype;

-- ADD: Añade un nuevo atributo surname a la tabla "persons8"
ALTER TABLE persons8
ADD surname varchar(150);

/*
RENAME COLUMN
Lección 13.11: https://youtu.be/OuJerKzV5T0?t=12624
*/

ALTER TABLE table_name
RENAME COLUMN old_name to new_name;

-- RENAME COLUMN: Renombra el atributo surname a description en la tabla "persons8"
ALTER TABLE persons8
RENAME COLUMN surname TO description;

/*
MODIFY COLUMN
Lección 13.12: https://youtu.be/OuJerKzV5T0?t=12675
*/

-- MODIFY COLUMN: Modifica el tipo de dato del atributo description en la tabla "persons8"
ALTER TABLE persons8
MODIFY COLUMN description varchar(250);

ALTER TABLE table_name
MODIFY column_name new_datatype constraint;

/*
DROP COLUMN
Lección 13.13: https://youtu.be/OuJerKzV5T0?t=12712
*/

ALTER TABLE table_name
DROP COLUMN column_name;

-- DROP COLUMN: Elimina el atributo description en la tabla "persons8"
ALTER TABLE persons8
DROP COLUMN description;


-- ADD CONSTRAINT
To add a constraint to an existing table, use the following syntax:

The following SQL adds a constraint named "CHK_Age" that is a CHECK constraint that ensures that the "Age" column has a value of 18 and above:
Example
ALTER TABLE Members
ADD CONSTRAINT CHK_Age CHECK (Age >= 18);
ALTER TABLE table_name
ADD CONSTRAINT constraint_name constraint_definition;

-- RENAME TABLE
ALTER TABLE table_name
RENAME TO new_table_name;
