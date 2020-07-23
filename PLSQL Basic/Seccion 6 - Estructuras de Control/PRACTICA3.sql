SET SERVEROUTPUT ON
BEGIN
    /* FOR i IN 1..15 LOOP     -- DEBEN SER NUMEROS
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP; */
    FOR i IN REVERSE 1..15 LOOP     -- DEBEN SER NUMEROS
        
        -- CONTINUE WHEN i = 10;
        /* IF i = 10 THEN
            CONTINUE;
        END IF; */
        
        DBMS_OUTPUT.PUT_LINE(i);
        
        -- EXIT WHEN i = 10;
        /* IF i = 10 THEN
            EXIT;
        END IF; */
        
    END LOOP;
END;