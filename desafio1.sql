DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;
  CREATE TABLE SpotifyClone.plano (
    plano_id INT NOT NULL AUTO_INCREMENT,
    nome_do_plano VARCHAR(100) NOT NULL,
    preco DECIMAL(4, 2 ) NOT NULL,
    CONSTRAINT PRIMARY KEY (plano_id)
) ENGINE=INNODB;

CREATE TABLE SpotifyClone.usuario (
    usuario_id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    idade SMALLINT NOT NULL,
    plano_id INT NOT NULL,
    data_assinatura DATE NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id),
    FOREIGN KEY (plano_id)
        REFERENCES plano (plano_id)
) ENGINE=INNODB;

CREATE TABLE SpotifyClone.artista (
    artista_id INT NOT NULL AUTO_INCREMENT,
    nome_do_artista VARCHAR(100) NOT NULL,
    CONSTRAINT PRIMARY KEY (artista_id)
) ENGINE=INNODB;

CREATE TABLE SpotifyClone.album (
    album_id INT NOT NULL AUTO_INCREMENT,
    nome_do_album VARCHAR(100) NOT NULL,
    artista_id INT NOT NULL,
    ano_lancamento YEAR NOT NULL,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artista_id)
        REFERENCES artista (artista_id)
    ) ENGINE=INNODB;

CREATE TABLE SpotifyClone.cancao (
    cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    album_id INT NOT NULL,
    nome_da_cancao VARCHAR(100) NOT NULL,
    duracao INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES album (album_id)
) ENGINE=INNODB;

CREATE TABLE SpotifyClone.historico (
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    historico_id DATETIME NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuario (usuario_id),
    FOREIGN KEY (cancao_id)
        REFERENCES cancao (cancao_id)
) ENGINE=INNODB;

CREATE TABLE SpotifyClone.seguidores (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuario (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES artista (artista_id)
) ENGINE=INNODB;

INSERT INTO SpotifyClone.plano (nome_do_plano, preco)
    VALUES ('Gratuito', 0.00),
    ('Familiar', 7.99),
    ('Universitário', 5.99),
    ('Pessoal', 6.99);
    
    INSERT INTO SpotifyClone.usuario (nome, idade, plano_id, data_assinatura)
    VALUES ('Barbara Liskov', 82, 1, '2019-10-20'),
    ('Robert Cecil Martin', 58, 1, '2017-01-06'),
    ('Ada Lovelace', 37, 2, '2017-12-30'),
    ('Martin Fowler', 46, 2, '2017-01-17'),
    ('Sandi Metz', 58, 2, '2018-04-29'),
    ('Paulo Freire', 19, 3, '2018-02-14'),
    ('Bell Hooks', 26, 3, '2018-01-05'),
    ('Christopher Alexander', 85, 4, '2019-06-05'),
    ('Judith Butler', 45, 4, '2020-05-13'),
    ('Jorge Amado', 58, 4, '2017-02-17');
    
  INSERT INTO SpotifyClone.artista (nome_do_artista)
  VALUES ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

  INSERT INTO SpotifyClone.album (nome_do_album, ano_lancamento, artista_id)
  VALUES ('Renaissance', '2022', 1),
	('Jazz', '1978', 2),
    ('Hot Space', '1982', 2),
    ('Falso Brilhante', '1998', 3),
    ('Vento de Maio', '2001', 3),
    ('QVVJFA?', '2003', 4),
    ('Somewhere Far Beyond', '2007', 5),
    ('I Put A Spell On You', '2012', 6);

    INSERT INTO SpotifyClone.cancao (nome_da_cancao, duracao, album_id)
    VALUES ('BREAK MY SOUL', 279, 1),
    ('VIRGO’S GROOVE', 369, 1),
    ('ALIEN SUPERSTAR', 116, 1),
    ('Don’t Stop Me Now', 203, 2),
    ('Under Pressure', 152, 3),
    ('Como Nossos Pais', 105, 4),
    ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
    ('Samba em Paris', 267, 6),
    ('The Bard’s Song', 244, 7),
    ('Feeling Good', 100, 8);
    
    INSERT INTO SpotifyClone.historico (historico_id, usuario_id, cancao_id)
    VALUES ('2022-02-28 10:45:55', 1, 8),
    ('2020-05-02 05:30:35', 1, 2),
    ('2020-03-06 11:22:33', 1, 10),
    ('2022-08-05 08:05:17', 2, 10),
    ('2020-01-02 07:40:33', 2, 7),
    ('2020-11-13 16:55:13', 3, 10),
    ('2020-12-05 18:38:30', 3, 2),
    ('2021-08-15 17:10:10', 4, 8),
    ('2022-01-09 01:44:33', 5, 8),
    ('2020-08-06 15:23:43', 5, 5),
    ('2017-01-24 00:31:17', 6, 7),
    ('2017-10-12 12:35:20', 6, 1),
    ('2011-12-15 22:30:49', 7, 4),
    ('2012-03-17 14:56:41', 8, 4),
    ('2022-02-24 21:14:22', 9, 9),
    ('2015-12-13 08:30:22', 10, 3);

    INSERT INTO SpotifyClone.seguidores (usuario_id, artista_id)
    VALUES (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 1),
    (6, 6),
    (7, 6),
    (9, 3),
    (10, 2);