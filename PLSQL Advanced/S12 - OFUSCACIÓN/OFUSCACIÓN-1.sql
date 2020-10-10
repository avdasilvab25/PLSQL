-- DBMS_DDL.CREATE_WRAPPED

BEGIN
    -- ENTRE PAR�NTESIS VA EL C�DIGO PLSQL A OFUSCAR
    DBMS_DDL.CREATE_WRAPPED('
    CREATE OR REPLACE PROCEDURE PROC1
    IS
        NUM_EMPLE NUMBER;
    BEGIN
        SELECT COUNT(*) INTO NUM_EMPLE FROM EMPLOYEES;
        DBMS_OUTPUT.PUT_LINE(NUM_EMPLE);
    END;
    ');
END;
/
    
SELECT LINE, TEXT FROM USER_SOURCE WHERE NAME = 'PROC1';