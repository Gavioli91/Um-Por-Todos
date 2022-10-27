SELECT FORMAT(MIN(plano.preco), 2) AS faturamento_minimo,
FORMAT(MAX(plano.preco), 2) AS faturamento_maximo,
FORMAT(AVG(plano.preco), 2) AS faturamento_medio,
FORMAT(SUM(plano.preco), 2) AS faturamento_total
FROM SpotifyClone.plano AS plano
INNER JOIN SpotifyClone.usuario AS usu
ON usu.plano_id = plano.plano_id;