-- Desafio 7 — Análise econômica dos municípios

-- Município, UF, Ano, PIB e População
-- Somente dados de 2021
-- PIB maior que 5.000.000 OU população maior que 500.000
-- Ordenado do maior PIB para o menor

SELECT
    M.Municipio,
    M.UF,
    T.Ano,
    FP.PIB,
    FPOP.Populacao
FROM dbo.População FPOP
INNER JOIN dbo.Municipios M
    ON M.IdMunicipioDW = FPOP.IdMunicipioDW
INNER JOIN dbo.Tempo T
    ON T.IdTempoDW = FPOP.IdTempoDW
INNER JOIN dbo.PIB FP
    ON FP.IdMunicipioDW = FPOP.IdMunicipioDW
    AND FP.IdTempoDW = FPOP.IdTempoDW
WHERE T.Ano = 2021
  AND (
        FP.PIB > 5000000
        OR FPOP.Populacao > 500000
      )
ORDER BY FP.PIB DESC;