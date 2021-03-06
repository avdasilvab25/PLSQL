SET SERVEROUTPUT ON;

DECLARE
    TYPE V1 IS VARRAY(50) OF VARCHAR2(100);
    
    -- PARA PODER UTILIZAR LOS VARRAY, HAY QUE INICIALIZARLOS PRIMERO CON SU CONSTRUCTOR
    VAR1 V1 := V1('ADIOS', 'HOLA', 'TERCERO'); -- CONSTRUCTOR DE VARRAY: V1()
    -- LA CANTIDAD DE ELEMENTOS DEL VARRAY ES LA CANTIDAD DE ELEMENTOS QUE SE DEFINIERON EN EL CONSTRUCTOR
BEGIN
    DBMS_OUTPUT.PUT_LINE(VAR1(1));
    VAR1(1) := 'HOLA';
    DBMS_OUTPUT.PUT_LINE(VAR1(1));
    
    DBMS_OUTPUT.PUT_LINE('');
    
    DBMS_OUTPUT.PUT_LINE('TOTAL DE ELEMENTOS: ' || VAR1.COUNT());
    DBMS_OUTPUT.PUT_LINE('M�XIMA CANTIDAD DE ELEMENTOS A REGISTRAR: ' || VAR1.LIMIT());
    
    DBMS_OUTPUT.PUT_LINE('');
    
    VAR1.EXTEND(); -- AGREGA LA CANTIDAD DE ELEMENTOS ESPECIFICADOS ENTRE PAR�NTESIS. EN CASO DE NO COLOCAR, AGREGA UNA POSICI�N
        -- LA CANTIDAD QUE SE DESEA AGREGAR NO PUEDE PASAR EL L�MITE ESPECIFICADO EN EL DECLARE. EN ESTE CASO, 50.
    VAR1.EXTEND(5);
    DBMS_OUTPUT.PUT_LINE('TOTAL DE ELEMENTOS: ' || VAR1.COUNT());

END;