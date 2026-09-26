

-- Top 10 Municípios com maior população em 2021

SELECT TOP 10
    M.Municipio,
    T.Ano,
    FP.Populacao
FROM dbo.População FP
INNER JOIN dbo.Municipios M
    ON M.IdMunicipioDW = FP.IdMunicipioDW
INNER JOIN dbo.Tempo T
    ON T.IdTempoDW = FP.IdTempoDW
WHERE T.Ano = 2021
ORDER BY FP.Populacao DESC;