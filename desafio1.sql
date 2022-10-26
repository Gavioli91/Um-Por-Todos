DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.artista(
      artista_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(50) NOT NULL,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.album(
      album_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL,
      ano_lancamento VARCHAR(10) NOT NULL,
      artista_id INT NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.cancao(
      cancao_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL,
      duracao INT NOT NULL,
      album_id INT NOT NULL,
      FOREIGN KEY (album_id) REFERENCES album (album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.plano(
      plano_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL,
      preco DECIMAL(4, 2) NOT NULL
  ) engine = InnoDB;

CREATE TABLE SpotifyClone.historico(
      historico_id DATETIME NOT NULL,
      usuario_id INT NOT NULL,
      cancao_id INT NOT NULL,
      PRIMARY KEY (usuario_id, cancao_id),
      FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
      FOREIGN KEY (cancao_id) REFERENCES cancao (cancao_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.seguidores(
      seguidores_id INT PRIMARY KEY AUTO_INCREMENT,
      artista_id INT NOT NULL,
      PRIMARY KEY (usuario_id, artista_id),
      FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
      FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuario(
      usuario_id INT PRIMARY KEY AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL,
      idade INT NOT NULL,
      plano_id INT NOT NULL,
      data_assinatura DATE NOT NULL,
      FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.artista (nome)
  VALUES
    INSERT INTO artista(nome) VALUES('Beyoncé');
    INSERT INTO artista(nome) VALUES ('Queen');
    INSERT INTO artista(nome) VALUES('Elis Regina');
    INSERT INTO artista(nome) VALUES('Banco Exu do Blues');
    INSERT INTO artista(nome) VALUES('Blind Guardian');
    INSERT INTO artista(nome) VALUES('Nina Simone');

  INSERT INTO SpotifyClone.album (nome, ano_lancamento, artista_id)
  VALUES
    INSERT INTO album(nome, ano_lancamento, artista_id) VALUES('Renaissance', '2022', 1);
    INSERT INTO album(nome, ano_lancamento, artista_id) VALUES ('Jazz', '1978', 2);
    INSERT INTO album(nome, ano_lancamento, artista_id) VALUES('Hot Space', '1982', 2);
    INSERT INTO album(nome, ano_lancamento, artista_id) VALUES('Falso Brilhante', '1998', 3);
    INSERT INTO album(nome, ano_lancamento, artista_id) VALUES('Vento de Maio', '2001', 3);
    INSERT INTO album(nome, ano_lancamento, artista_id) VALUES('QVVJFA?', '2003', 4);
    INSERT INTO album(nome, ano_lancamento, artista_id) VALUES('Somewhere Far Beyond', '2007', 5);
    INSERT INTO album(nome, ano_lancamento, artista_id) VALUES('I Put A Spell On You', '2012', 6);

    INSERT INTO SpotifyClone.cancao (nome, duracao, album_id)
    VALUES
    INSERT INTO cancao(nome, duracao, album_id) VALUES('Break My Soul', 279, 1);
    INSERT INTO cancao(nome, duracao, album_id) VALUES('Virgo\’s Groove', 369, 1);
    INSERT INTO cancao(nome, duracao, album_id) VALUES('Alien Superstar', 116, 1);
    INSERT INTO cancao(nome, duracao, album_id) VALUES('Don\’t Stop Me Now', 203, 2);
    INSERT INTO cancao(nome, duracao, album_id) VALUES('Under Pressure', 152, 3);
    INSERT INTO cancao(nome, duracao, album_id) VALUES('Como Nossos Pais', 105, 4);
    INSERT INTO cancao(nome, duracao, album_id) VALUES('O Medo de Amar é o Medo de Ser Livre', 207, 5);
    INSERT INTO cancao(nome, duracao, album_id) VALUES('Samba em Paris', 267, 6);
    INSERT INTO cancao(nome, duracao, album_id) VALUES('The Bard\’s Song', 244, 7);
    INSERT INTO cancao(nome, duracao, album_id) VALUES('Feeling Good', 100, 8);

    INSERT INTO SpotifyClone.plano (plano, preco)
    VALUES
    INSERT INTO plano(plano, preco) VALUES('Gratuito', 0.00);
    INSERT INTO plano(plano, preco) VALUES('Familiar', 7.99);
    INSERT INTO plano(plano, preco) VALUES('Universitário', 5.99);
    INSERT INTO plano(plano, preco) VALUES('Pessoal', 6.99);

    INSERT INTO SpotifyClone.historico (historico_id, usuario_id, cancao_id)
    VALUES
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2022-02-28 10:45:55', 1, 8);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2020-05-02 05:30:35', 1, 2);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2020-03-06 11:22:33', 1, 10);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2022-08-05 08:05:17', 2, 10);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2020-01-02 07:40:33', 2, 7);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2020-11-13 16:55:13', 3, 10);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2020-12-05 18:38:30', 3, 2);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2021-08-15 17:10:10', 4, 8);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2022-01-09 01:44:33', 5, 8);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2020-08-06 15:23:43', 5, 5);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2017-01-24 00:31:17', 6, 7);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2017-10-12 12:35:20', 6, 1);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2011-12-15 22:30:49', 7, 4);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2012-03-17 14:56:41', 8, 4);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2022-02-24 21:14:22', 9, 9);
    INSERT INTO historico(historico_id, usuario_id, cancao_id) VALUES('2015-12-13 08:30:22', 10, 3);

    INSERT INTO SpotifyClone.seguidores (seguidores_id, artista_id)
    VALUES
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(1, 1);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(1, 2);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(1, 3);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(2, 1);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(2, 3);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(3, 2);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(4, 4);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(5, 5);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(5, 6);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(6, 1);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(6, 6);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(7, 6);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(9, 3);
    INSERT INTO seguidores(seguidores_id, artista_id) VALUES(10, 2);

    INSERT INTO SpotifyClone.usuario (nome, idade, plano_id, data_assinatura)
    VALUES
    INSERT INTO usuario(nome, idade, plano_id, data_assinatura) VALUES('Barbara Liskov', 82, 1, '2019-10-20');
    INSERT INTO usuario(nome, idade, plano_id, data_assinatura) VALUES('Robert Cecil Martin', 58, 1, '2017-01-06');
    INSERT INTO usuario(nome, idade, plano_id, data_assinatura) VALUES('Ada Lovelace', 37, 2, '2017-12-30');
    INSERT INTO usuario(nome, idade, plano_id, data_assinatura) VALUES('Martin Fowler', 46, 2, '2017-01-17');
    INSERT INTO usuario(nome, idade, plano_id, data_assinatura) VALUES('Sandi Metz', 58, 2, '2018-04-29');
    INSERT INTO usuario(nome, idade, plano_id, data_assinatura) VALUES('Paulo Freire', 19, 3, '2018-02-14');
    INSERT INTO usuario(nome, idade, plano_id, data_assinatura) VALUES('Bell Hooks', 26, 3, '2018-01-05');
    INSERT INTO usuario(nome, idade, plano_id, data_assinatura) VALUES('Christopher Alexander', 85, 4, '2019-06-05');
    INSERT INTO usuario(nome, idade, plano_id, data_assinatura) VALUES('Judith Butler', 45, 4, '2020-05-13');
    INSERT INTO usuario(nome, idade, plano_id, data_assinatura) VALUES('Jorge Amado', 58, 4, '2017-02-17');