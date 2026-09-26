CREATE OR ALTER PROCEDURE sp_ETL_Municipios
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE STG_Municipios;

    INSERT INTO STG_Municipios
    (
        CodigoIBGE,
        Municipio,
        UF,
        CodigoUF,
        NomeRegiaoGeograficaIntermediaria,
        NomeRegiaoGeograficaImediata,
        CodigoMunicipio
    )
    SELECT
        F8,
        F9,
        F2,
        TRY_CAST(
            [TÍTULO: BET - BANCO DE ESTRUTURAS TERRITORIAIS]
            AS INT
        ),
        F4,
        F6,
        F7
    FROM Import_Municipios
    WHERE TRY_CAST(
        [TÍTULO: BET - BANCO DE ESTRUTURAS TERRITORIAIS]
        AS INT
    ) IS NOT NULL;
END;
GO