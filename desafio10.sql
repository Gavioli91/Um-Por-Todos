SELECT mus.nome_da_cancao AS nome,
COUNT(hist.cancao_id) AS reproducoes
FROM SpotifyClone.historico AS hist
INNER JOIN SpotifyClone.cancao AS mus
ON mus.cancao_id = hist.cancao_id
INNER JOIN SpotifyClone.usuario AS usu
ON usu.usuario_id = hist.usuario_id
WHERE usu.plano_id
IN(1, 4)
GROUP BY mus.nome_da_cancao
ORDER BY mus.nome_da_cancao;