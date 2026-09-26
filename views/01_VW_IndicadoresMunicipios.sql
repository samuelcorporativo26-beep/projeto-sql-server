USE BrasilEmDados;
GO

CREATE OR ALTER VIEW VW_IndicadoresMunicipios
AS

SELECT
    M.Municipio,
    M.UF,
    T.Ano,
    FP.PIB,
    FPOP.Populacao
FROM dbo.PIB FP
INNER JOIN dbo.Municipios M
    ON M.IdMunicipioDW = FP.IdMunicipioDW
INNER JOIN dbo.Tempo T
    ON T.IdTempoDW = FP.IdTempoDW
INNER JOIN dbo.População FPOP
    ON FPOP.IdMunicipioDW = FP.IdMunicipioDW
    AND FPOP.IdTempoDW = FP.IdTempoDW;
GO

