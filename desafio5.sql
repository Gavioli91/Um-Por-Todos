SELECT mus.nome_da_cancao AS cancao,
COUNT(hist.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS mus
INNER JOIN SpotifyClone.historico AS hist
ON mus.cancao_id = hist.cancao_id
GROUP BY cancao ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;