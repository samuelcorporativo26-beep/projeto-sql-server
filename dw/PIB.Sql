CREATE OR ALTER PROCEDURE sp_DW_PIB
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE PIB;

    INSERT INTO PIB
    (
        IdMunicipioDW,
        IdTempoDW,
        PIB,
        PibPerCapital
    )

    SELECT
        M.IdMunicipioDW,
        T.IdTempoDW,
        P.PIB,
        P.PibPerCapital
    FROM BrasilAnalytics.dbo.STG_Pib P

    INNER JOIN Municipios M
        ON P.CodigoIBGE = M.CodigoIBGE

    INNER JOIN Tempo T
        ON P.Ano = T.Ano;

END;
GO