SHOW PARAMETER CACHE;

SELECT NAME, VALUE FROM V$PARAMETER WHERE NAME LIKE '%result_cache%';

-- ALTER SYSTEM SET RESULT_CACHE_MAX_SIZE = 100M; -- MODIFICA EL TAMA�O DE LA CACHE A 100 MEGAS

-- ALTER SYSTEM SET RESULT_CACHE_MODE = 'MANUAL'; -- DE ESTA FORMA, SE LE INDICA A LA BASE DE DATOS QUE SE LE INDICAR� MANUALMENTE QU� SER� ALMACENADO EN CACHE
-- ALTER SYSTEM SET RESULT_CACHE_MODE = 'FORCED'; -- DE ESTA FORMA, SE LE INDICA A LA BASE DE DATOS QUE AUTOM�TICAMENTE ALMACENE LO QUE CONSIDERE DE USO FRECUENTE EN CACHE

-- PARA DESACTIVAR LA CACHE, EL ATRIBUTO result_cache_max_size DEBE ESTAR EN 0

SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE(DBMS_RESULT_CACHE.STATUS); -- PERMITE SABER SI LA CACHE EST� ACTIVA O NO
    DBMS_RESULT_CACHE.MEMORY_REPORT; -- NECESITA TENER SERVEROUTPUT ACTIVO. OFRECE EL REPORTE DE MEMORIA
    DBMS_RESULT_CACHE.FLUSH; -- LIMPIA LA CACHE
END;
/
