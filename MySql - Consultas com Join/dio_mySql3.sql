CREATE DATABASE dio_mySql3;

USE dio_mySql3;

CREATE TABLE canais (
  id_canal int(11) NOT NULL,
  nome_canal varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO canais (id_canal, nome_canal) VALUES
(1, 'React'),
(2, 'PHP'),
(3, 'CSS'),
(4, 'HTML');

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE videos (
   id_video int(11) NOT NULL,
   nome_video varchar(100) NOT NULL,
   autor_video varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO videos (id_video, nome_video, autor_video) VALUES
(1, 'Login com React', 'React'),
(2, 'Componentes com React', 'React'),
(3, 'Listas com PHP', 'PHP'),
(4, 'Funções com PHP', 'PHP'),
(5, 'Páginas com HTML', 'HTML');

CREATE TABLE videos_canais (
   id_canais_video int(11) NOT NULL,
   fk_canal int(11) NOT NULL,
   fk_video int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO videos_canais (id_canais_video, fk_canal, fk_video) VALUES
(1, 2, 4),
(2, 2, 3),
(3, 1, 1),
(4, 1, 2),
(5, 4, 5);

ALTER TABLE canais
  ADD PRIMARY KEY (id_canal);

ALTER TABLE videos
  ADD PRIMARY KEY (id_video);

--
-- Índices para tabela `videos_canais`
--
ALTER TABLE videos_canais
  ADD PRIMARY KEY (id_canais_video),
  ADD KEY fk_canal (fk_canal),
  ADD KEY fk_video (fk_video);

ALTER TABLE canais
  MODIFY id_canal int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE videos
  MODIFY id_video int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE videos_canais
  MODIFY id_canais_video int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE videos_canais
  ADD CONSTRAINT fk_canal FOREIGN KEY (fk_canal) REFERENCES canais (id_canal),
  ADD CONSTRAINT fk_video FOREIGN KEY (fk_video) REFERENCES videos (id_video);
COMMIT;

SELECT * FROM videos;

SELECT videos.nome_video, videos.autor_video, canais.nome_canal
	FROM videos_canais AS vc 
    JOIN videos ON vc.fk_video = videos.id_video
	JOIN canais ON vc.fk_canal = canais.id_canal;
    
SELECT * FROM videos_canais AS vc 
    RIGHT OUTER JOIN videos ON vc.fk_video = videos.id_video
    RIGHT OUTER JOIN canais ON vc.fk_canal = canais.id_canal;
    
SELECT * FROM videos;