-- 1 Quantidade de registros
SELECT COUNT(*)
FROM Import_Estados;

-- 2 Verificar duplicados
SELECT Column2, COUNT(*)
FROM Import_Estados
GROUP BY Column2
HAVING COUNT(*) > 1;

-- 3 Verificar HTML
SELECT *
FROM Import_Estados
WHERE Column1 LIKE '<table%';

-- 4 Verificar conversão
SELECT *
FROM Import_Estados
WHERE TRY_CAST(Column2 AS INT) IS NULL;

--4 Existe Cabecalho
SELECT *
FROM Import_Estados
WHERE Column1 = 'UF';