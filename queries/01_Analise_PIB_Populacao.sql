USE BrasilEmDados;
GO

SELECT
    M.Municipio,
    T.Ano,
    FP.PIB,
    FPOP.Populacao,
    CAST(
        (FP.PIB * 1000.0) / FPOP.Populacao
        AS DECIMAL(18,2)
    ) AS PIBPerCapita

FROM dbo.PIB FP

INNER JOIN dbo.Municipios M
    ON M.IdMunicipioDW = FP.IdMunicipioDW

INNER JOIN dbo.Tempo T
    ON T.IdTempoDW = FP.IdTempoDW

INNER JOIN dbo.População FPOP
    ON FPOP.IdMunicipioDW = FP.IdMunicipioDW
    AND FPOP.IdTempoDW = FP.IdTempoDW

ORDER BY PIBPerCapita DESC;