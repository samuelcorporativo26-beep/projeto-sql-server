-- Top 10 Municipios com maior PIB em 2021

-- Top 10 Municípios com maior PIB em 2021

SELECT TOP 10
    M.Municipio,
    T.Ano,
    FB.PIB
FROM dbo.PIB FB
INNER JOIN dbo.Municipios M
    ON M.IdMunicipioDW = FB.IdMunicipioDW
INNER JOIN dbo.Tempo T
    ON T.IdTempoDW = FB.IdTempoDW
WHERE T.Ano = 2021
ORDER BY FB.PIB DESC;