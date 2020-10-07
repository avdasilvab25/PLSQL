SET SERVEROUTPUT ON;

DECLARE 
    TYPE DEPARTAMENTOS IS TABLE OF DEPARTMENTS.DEPARTMENT_NAME%TYPE
        INDEX BY PLS_INTEGER;
        
    DEPTS DEPARTAMENTOS;
    
    TYPE EMPLEADOS IS TABLE OF EMPLOYEES%ROWTYPE INDEX BY PLS_INTEGER;
    
    EMPLES EMPLEADOS;
    
    TYPE NOMBRE IS TABLE OF EMPLOYEES.FIRST_NAME%TYPE INDEX BY VARCHAR2(2);
    
    NOMBRES NOMBRE;
BEGIN
    
    -- DEPTS CON CLAVE Y VALOR. DEPTS(CLAVE) := VALOR
    DEPTS(1) := 'HOLA'; -- 1 | 'HOLA'
    DEPTS(2) := 'ADIOS';
    DEPTS(50) := 'OTRO VALOR';
    DEPTS(-10) := 'SIGUIENTE VALOR';
    NOMBRES('AA') := 'PEDRO';
    
    EMPLES(10).FIRST_NAME := 'PEDRO';

    DBMS_OUTPUT.PUT_LINE(DEPTS(2)); -- PIDE EL VALOR DONDE LA CLAVE ES 2
    DBMS_OUTPUT.PUT_LINE(DEPTS(-10));
    DBMS_OUTPUT.PUT_LINE(NOMBRES('AA'));
    DBMS_OUTPUT.PUT_LINE(EMPLES(10).FIRST_NAME);
    DBMS_OUTPUT.PUT_LINE(EMPLES(10).LAST_NAME); -- COMO NO EXISTE, ES NULL
END;
/