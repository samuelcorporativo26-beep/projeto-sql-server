CREATE OR ALTER PROCEDURE sp_ETL_Pib
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE STG_Pib;

    INSERT INTO STG_Pib
    (
        CodigoIBGE,
        Ano,
        PIB,
        PibPerCapital
    )
    SELECT
        TRY_CAST(D1C AS INT) AS CodigoIBGE,
        TRY_CAST(D3C AS INT) AS Ano,
        TRY_CAST(V AS DECIMAL(18,2)) AS PIB,
        NULL AS PibPerCapital
    FROM Import_Pib
    WHERE TRY_CAST(D1C AS INT) IS NOT NULL;
END;
GO
