-- Desafio 6 — PIB, População e PIB per capita por UF em 2021

SELECT
    M.UF,
    T.Ano,
    SUM(FP.PIB) AS PIBtotal,
    SUM(FPOP.Populacao) AS PopulacaoTotal,
    CAST
    (
        (SUM(FP.PIB) * 1000.00) / SUM(FPOP.Populacao)
        AS DECIMAL(18,2)
    ) AS PIBPerCapital
FROM dbo.PIB FP
INNER JOIN dbo.Municipios M
    ON M.IdMunicipioDW = FP.IdMunicipioDW
INNER JOIN dbo.Tempo T
    ON T.IdTempoDW = FP.IdTempoDW
INNER JOIN dbo.População FPOP
    ON FPOP.IdMunicipioDW = FP.IdMunicipioDW
    AND FPOP.IdTempoDW = FP.IdTempoDW
WHERE T.Ano = 2021
GROUP BY
    M.UF,
    T.Ano
ORDER BY PIBPerCapital DESC;