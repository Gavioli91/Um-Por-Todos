SELECT famous.nome_do_artista AS artista,
a.nome_do_album AS album,
COUNT(segui.artista_id) AS seguidores
FROM SpotifyClone.artista AS famous
INNER JOIN SpotifyClone.album AS a
ON a.artista_id = famous.artista_id
INNER JOIN SpotifyClone.seguidores AS segui
ON segui.artista_id = famous.artista_id
GROUP BY a.album_id
ORDER BY seguidores DESC,
artista ASC, album ASC;