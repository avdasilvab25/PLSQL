-- PR�CTICA 7: DETECTAR DEPENDENCIAS DE OBJETOS
SELECT * FROM USER_DEPENDENCIES;

SELECT * FROM USER_DEPENDENCIES WHERE NAME = 'EMPLOYEES';
SELECT * FROM USER_DEPENDENCIES WHERE NAME = 'EMP_DETAILS_VIEW';
SELECT * FROM USER_DEPENDENCIES WHERE NAME = 'EMP_DETAILS_VIEW';
SELECT * FROM USER_DEPENDENCIES WHERE REFERENCED_NAME = 'EMPLOYEES';

-- PR�CTICA 8: COMPROBAR EL ESTADO DE LOS OBJETOS

DESC USER_OBJECTS;
SELECT * FROM USER_OBJECTS;
SELECT STATUS, COUNT(*) FROM USER_OBJECTS GROUP BY STATUS;
SELECT * FROM USER_OBJECTS WHERE STATUS = 'INVALID';

-- PR�CTICA 9: EJEMPLO PR�CTICO DE INVALIDACI�N DE OBJETOS

CREATE TABLE PRUEBA (C1 NUMBER, C2 NUMBER);
SELECT * FROM USER_OBJECTS WHERE OBJECT_NAME = 'PRUEBA';
CREATE VIEW PRUEBA_V AS (SELECT C1 FROM PRUEBA);
SELECT * FROM USER_OBJECTS WHERE OBJECT_NAME = 'PRUEBA_V'; -- STATUS VALID
ALTER TABLE PRUEBA MODIFY C2 VARCHAR(100);
ALTER TABLE PRUEBA MODIFY C1 VARCHAR(100);
SELECT * FROM USER_OBJECTS WHERE OBJECT_NAME = 'PRUEBA_V'; -- STATUS INVALID. C1 DATA TYPE CHANGED, SO ORACLE MODIFIES THE VIEW STATUS TO INVALID!
SELECT * FROM PRUEBA_V;
SELECT * FROM USER_OBJECTS WHERE OBJECT_NAME = 'PRUEBA_V'; -- STATUS VALID

ALTER TABLE PRUEBA DROP COLUMN C1;
SELECT * FROM USER_OBJECTS WHERE OBJECT_NAME = 'PRUEBA_V'; -- STATUS INVALID. C1 COLUMN DOES NOT LONGER EXISTS, SO ORACLE 
    -- MODIFIES THE VIEW STATUS TO INVALID!
SELECT * FROM PRUEBA_V; -- THE VIEW DOES NOT COMPILE!













