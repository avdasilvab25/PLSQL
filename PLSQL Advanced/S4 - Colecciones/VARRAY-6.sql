SET SERVEROUTPUT ON;

DECLARE
    TYPE EMPLEADO IS VARRAY(10) OF EMPLOYEES%ROWTYPE;
    EMPLEADOS EMPLEADO := EMPLEADO(); -- SE INICIALIZA CON EL CONSTRUCTOR
BEGIN

    -- BULK COLLECT
    SELECT * BULK COLLECT
    INTO EMPLEADOS
    FROM EMPLOYEES FETCH FIRST 10 ROWS ONLY;
    -- NO ES NECESARIO EXTENDER EL VARRAY, EL BULK COLLECT LO HACE AUTOM�TICAMENTE
    
    FOR I IN EMPLEADOS.FIRST..EMPLEADOS.LAST LOOP -- EMPLEADOS.FIRST ES IGUAL A EMPLEADOS.FIRST()
        DBMS_OUTPUT.PUT_LINE(EMPLEADOS(I).FIRST_NAME || ' ' || EMPLEADOS(I).LAST_NAME);
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('');
    
    DBMS_OUTPUT.PUT_LINE('PRIMER ELEMENTO: ' || EMPLEADOS.FIRST);
    DBMS_OUTPUT.PUT_LINE('�LTIMO ELEMENTO: ' || EMPLEADOS.LAST);
    DBMS_OUTPUT.PUT_LINE('SIGUIENTE ELEMENTO: ' || EMPLEADOS.NEXT(1));

    DBMS_OUTPUT.PUT_LINE('');

    IF (EMPLEADOS.EXISTS(20)) THEN
        DBMS_OUTPUT.PUT_LINE('EXISTE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('NO EXISTE');
    END IF;
    
    -- EMPLEADOS.DELETE(2); --> ESTE M�TODO NO ES V�LIDO. LAS POSICIONES EN UN VARRAY DEBEN SER CONTIGUAS
END;
/