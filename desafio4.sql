SELECT usu.nome AS usuario,
CASE WHEN YEAR(MAX(hist.historico_id)) >= 2021 THEN 'Usuário ativo'
ELSE 'Usuário inativo'
END AS status_usuario
FROM SpotifyClone.usuario AS usu
INNER JOIN SpotifyClone.historico AS hist
ON hist.usuario_id = usu.usuario_id
GROUP BY usuario ORDER BY usuario ASC;