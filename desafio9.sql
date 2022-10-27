SELECT COUNT(hist.usuario_id)
AS quantidade_musicas_no_historico
FROM SpotifyClone.historico AS hist
INNER JOIN SpotifyClone.usuario AS usu
ON usu.usuario_id = hist.usuario_id
WHERE usu.nome = 'Barbara Liskov';