CREATE OR ALTER PROCEDURE sp_DW_Populacao
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE População;

    INSERT INTO População
    (
        IdMunicipioDW,
        IdTempoDW,
        Populacao
    )
    SELECT
        M.IdMunicipioDW,
        T.IdTempoDW,
        P.Populacao
    FROM BrasilAnalytics.dbo.STG_Populacao P

    INNER JOIN Municipios M
        ON P.CodigoIBGE = M.CodigoIBGE

    INNER JOIN Tempo T
        ON P.Ano = T.Ano;

END;
GO