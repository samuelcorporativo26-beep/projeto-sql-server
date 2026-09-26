CREATE OR ALTER PROCEDURE sp_DW_Municipios
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE Municipios;

    INSERT INTO Municipios
    (
        CodigoIBGE,
        Municipio,
        CodigoMunicipio,
        UF
    )
    SELECT
        CodigoIBGE,
        Municipio,
        CodigoMunicipio,
        UF
    FROM BrasilAnalytics.dbo.STG_Municipios;
END;
GO 