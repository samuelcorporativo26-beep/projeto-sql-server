-- Desafio 4 — População total por UF em 2021

SELECT 
    M.UF,
    T.Ano,
    SUM(FP.Populacao) AS TotalPopulacao
FROM dbo.População FP
INNER JOIN dbo.Municipios M
    ON M.IdMunicipioDW = FP.IdMunicipioDW
INNER JOIN dbo.Tempo T
    ON T.IdTempoDW = FP.IdTempoDW
WHERE T.Ano = 2021
GROUP BY 
    M.UF,
    T.Ano
ORDER BY TotalPopulacao DESC;