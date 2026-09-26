CREATE OR ALTER PROCEDURE sp_ETL_Populacao
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE STG_Populacao;

    INSERT INTO STG_Populacao
    (
        CodigoIBGE,
        Ano,
        Populacao,
        Municipio
    )
    SELECT
        M.CodigoIBGE,
        2022 AS Ano,
        CAST(P.Ano AS VARCHAR(20)) AS Populacao,
        LEFT(
            P.Brasil_e_Município,
            CHARINDEX(' (', P.Brasil_e_Município + ' (') - 1
        ) AS Municipio
    FROM Import_Populacao P
    INNER JOIN STG_Municipios M
        ON M.Municipio =
            LEFT(
                P.Brasil_e_Município,
                CHARINDEX(' (', P.Brasil_e_Município + ' (') - 1
            )
    WHERE P.Brasil_e_Município <> 'Brasil'
      AND TRY_CAST(P.Ano AS INT) IS NOT NULL;
END;
GO