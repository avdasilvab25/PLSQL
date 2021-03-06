SET SERVEROUTPUT ON;

CREATE TABLE EMPLES
    (
        CODIGO NUMBER,
        DIRECCION VARCHAR2(100),
        DATOS EMPLEADO
    )
    NESTED TABLE DATOS STORE AS TABLA_DATOS; -- NOMBRE DE LA TABLA AUXILIAR PARA LOS NESTED_TABLES
/

DESC EMPLES;
DESC EMPLEADO;

INSERT INTO EMPLES VALUES (1, 'PINTORES 5', EMPLEADO('PEPE'));

SELECT * FROM EMPLES;
SELECT * FROM EMPLES.TABLA_DATOS;

INSERT INTO EMPLES VALUES (2, 'CALLE 2', EMPLEADO('PEPE', 'RODRÍGUEZ', 'MARTÍNEZ'));


