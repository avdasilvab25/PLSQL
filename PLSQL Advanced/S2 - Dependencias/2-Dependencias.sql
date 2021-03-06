-- PR�CTICA 10: COMPILAR PROCEDIMIENTOS Y FUNCIONES INV�LIDAS

CREATE OR REPLACE PROCEDURE PROC
IS
BEGIN
    NULL;
    -- XX -- SE MODIFICA EL SP PARA GENERAR UN ERROR Y VER EL STATUS EN LA TABLA DE USER_OBJECTS;
    -- DE ESTA FORMA, TANTO PROC COMO PROC1 TIENEN STATUS INVALID.
END;
/

SELECT * FROM USER_OBJECTS WHERE OBJECT_NAME LIKE '%PROC%';

CREATE OR REPLACE PROCEDURE PROC1
IS
BEGIN
    PROC;
END;
/

SELECT * FROM USER_DEPENDENCIES WHERE NAME LIKE '%PROC%'; -- MUESTRA QUE EL PROCEDIMIENTO PROC1, TIENE COMO DEPENDENCIA AL PROCEDIMIENTO PROC.

ALTER PROCEDURE PROC1 COMPILE; -- PARA COMPILAR EL PROCEDIMIENTO
-- ALTER FUNCTION FUNCTION_1 COMPILE; PARA COMPILAR UNA FUNCI�N
