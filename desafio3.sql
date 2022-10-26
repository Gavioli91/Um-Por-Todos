SELECT u.nome AS usuario,
COUNT(his.cancao_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(mus.duracao) / 60, 2) AS total_minutos        
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS his
ON his.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancao AS mus
ON mus.cancao_id = his.cancao_id
GROUP BY u.usuario_id
ORDER BY u.nome;