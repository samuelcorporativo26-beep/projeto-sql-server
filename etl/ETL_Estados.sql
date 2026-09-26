
CREATE OR ALTER PROCEDURE sp_ETL_Estados
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE STG_Estados;

    INSERT INTO STG_Estados
    (
        UF,
        Estado,
        Regiao,
        Gentilico,
        Governador,
        Capital,
        AreaTerritorial,
        PopulacaoCenso,
        DensidadeDemografica,
        PopulacaoEstimada,
        MatriculasEnsinoFundamental,
        IDH,
        ReceitaBruta,
        DespesaBruta,
        RendaPerCapita,
        TotalVeiculos
    )
    SELECT
        NULL,
        Column1,
        NULL,
        Column3,
        Column4,
        Column5,
        TRY_CAST(Column6 AS DECIMAL(18,3)),
        TRY_CAST(Column7 AS INT),
        TRY_CAST(Column8 AS DECIMAL(18,2)),
        TRY_CAST(Column9 AS INT),
        TRY_CAST(Column10 AS INT),
        TRY_CAST(Column11 AS DECIMAL(5,3)),
        TRY_CAST(Column12 AS DECIMAL(18,2)),
        TRY_CAST(Column13 AS DECIMAL(18,2)),
        TRY_CAST(Column14 AS DECIMAL(18,2)),
        TRY_CAST(Column15 AS INT)
    FROM Import_Estados
    WHERE TRY_CAST(Column2 AS INT) IS NOT NULL;
END;
GO