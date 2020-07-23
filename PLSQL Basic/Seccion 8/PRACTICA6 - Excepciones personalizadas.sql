SET SERVEROUTPUT ON

DECLARE
    reg_max EXCEPTION;
    regn   NUMBER;
    regt   VARCHAR2(200);
BEGIN
    regn := 90;
    regt := 'ASIA';
    IF regn < 100 THEN
        -- RAISE_APPLICATION_ERROR(-20001, 'TESTING'); -- EXCEPTION no captura este error
        RAISE reg_max;  -- raise: dispara la excepci�n tal...
    -- ELSE
        -- INSERT INTO ...
    END IF;
    dbms_output.put_line('La regi�n ya existe');
EXCEPTION
    WHEN reg_max THEN -- compruebo que el registro no est� en bd, e inserto
        dbms_output.put_line('Error message: ' || sqlerrm);
END;