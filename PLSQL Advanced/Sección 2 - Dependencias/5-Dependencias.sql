-- PR�CTICA 13: DBMS_UTILITY.
SET SERVEROUTPUT ON

/*
    MUESTRA LA JERARQU�A DE LAS DEPENDENCIAS DONDE SE ESPECIFICA EL TIPO DE OBJETO (TABLE), EL USUARIO QUE LO CRE� (HR) Y EL NOMBRE
    DEL OBJETO (PRUEBA)
*/
EXECUTE DBMS_UTILITY.GET_DEPENDENCY('TABLE', 'HR', 'PRUEBA');

/*
    INTENTA MODIFICAR LOS INVALID A VALID (USUARIO, NOMBRE DEL OBJETO, TIPO DE OBJETO DE ACUERDO A LA TABLA).
    SE USA ESTA V�A PORQUE EN PL/SQL NO SE PUEDEN USAR SENTENCIAS ALTER, TIENE QUE SER SQL DIN�MICO.
    ES POR ELLO, QUE SE HACE USO DE ESTAS SENTENCIAS.
    
    TABLA PARA LOS TIPOS DE DATO
    1 = TABLE/PROCEDURE/TYPE
    2 = BODY
    3 = TRIGGER
    4 = INDEX
    5 = CLUSTER
    8 = LOB
    9 = DIRECTORY
    10 = QUEUE
*/
EXECUTE DBMS_UTILITY.VALIDATE('HR', 'PRUEBA', 1);

/*
    COMPILA LOS OBJETOS DE ACUERDO A LOS PAR�METROS.
    - USUARIO: HR
    - �COMPILA TODOS LOS OBJETOS SEAN V�LIDOS O INV�LIDOS?: NO (SOLO LOS FALSOS)
    - �REUSA LAS CONFIGURACIONES PREVIAS?: S�.
    
    OTRA FORMA DE PASAR LOS ARGUMENTOS: NOMBRE_DEL_ARGUMENTO=>VALOR
*/
EXECUTE DBMS_UTILITY.COMPILE_SCHEMA('HR', COMPILE_ALL=>FALSE, REUSE_SETTINGS=>TRUE);

