SELECT mus.nome_da_cancao AS nome_musica,
CASE
WHEN mus.nome_da_cancao LIKE '%Bard%' THEN REPLACE(mus.nome_da_cancao, 'Bard', 'QA')
WHEN mus.nome_da_cancao LIKE '%Amar%' THEN REPLACE(mus.nome_da_cancao, 'Amar', 'Code Review')
WHEN mus.nome_da_cancao LIKE '%Pais%' THEN REPLACE(mus.nome_da_cancao, 'Pais', 'Pull Requests')
WHEN mus.nome_da_cancao LIKE '%SOUL%' THEN REPLACE(mus.nome_da_cancao, 'SOUL', 'CODE')
WHEN mus.nome_da_cancao LIKE '%SUPERSTAR%' THEN REPLACE(mus.nome_da_cancao, 'SUPERSTAR', 'SUPERDEV')
ELSE null
END AS novo_nome FROM SpotifyClone.cancao AS mus
GROUP BY mus.nome_da_cancao
HAVING novo_nome IS NOT NULL
ORDER BY mus.nome_da_cancao DESC;