CREATE OR ALTER PROCEDURE sp_DW_Tempo
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE Tempo;

    INSERT INTO Tempo
    (
        Ano
    )
    SELECT DISTINCT Ano
    FROM BrasilAnalytics.dbo.STG_Populacao
    WHERE Ano IS NOT NULL

    UNION

    SELECT DISTINCT Ano
    FROM BrasilAnalytics.dbo.STG_Pib
    WHERE Ano IS NOT NULL;

END;
GO