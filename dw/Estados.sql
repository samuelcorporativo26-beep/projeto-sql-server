CREATE OR ALTER PROCEDURE sp_DW_Estados
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE Estados;

    INSERT INTO Estados
    (
        CodigoUF,
        UF,
        Estado,
        Regiao
    )
    SELECT DISTINCT
        M.CodigoUF,
        NULL AS UF,
        E.Estado,
        NULL AS Regiao
    FROM BrasilAnalytics.dbo.STG_Estados E

    INNER JOIN BrasilAnalytics.dbo.STG_Municipios M
        ON E.Estado = M.UF;

END;
GO