SET SERVEROUTPUT ON
DECLARE
    empleado        EMPLOYEES%ROWTYPE;
    code            NUMBER;
    message         VARCHAR2(100);
BEGIN
    SELECT * INTO empleado
    FROM employees;
    DBMS_OUTPUT.PUT_LINE(empleado.salary);
EXCEPTION
    WHEN OTHERS THEN    
        DBMS_OUTPUT.PUT_LINE('Error code: ' || SQLCODE);
        code := SQLCODE;
        DBMS_OUTPUT.PUT_LINE('Error message: ' || SQLERRM);
        message := SQLERRM;
        -- INSERT INTO ... VALUES (SQLCODE, SQLERRM);   --> ESTO DA ERROR. SQL NO SABE DE ESAS FUNCIONES. SON MOTORES DISTINTOS
        -- INSERT INTO ... VALUES (code, message);  --> ESTO SÍ FUNCIONA. SON VARIABLES NO FUNCIONES DE PL/SQL
        -- COMMIT;
END;