--Selecionar o nome das cidades que possuem mais de um abrigo.
SELECT edr_cidade, Count(*) Qtd_Abrigos_Encontrada FROM BJ204236.abrigo
GROUP BY edr_cidade
HAVING Count(*) > 1
