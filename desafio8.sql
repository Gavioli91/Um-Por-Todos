SELECT famous.nome_do_artista AS artista,
a.nome_do_album AS album
FROM SpotifyClone.artista AS famous
INNER JOIN SpotifyClone.album AS a
WHERE famous.nome_do_artista
LIKE 'Elis Regina' AND a.artista_id = '3';