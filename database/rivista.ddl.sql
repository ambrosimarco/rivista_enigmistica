DROP DATABASE IF EXISTS rivista;
CREATE DATABASE rivista;

CREATE TABLE tematica (
  id int PRIMARY KEY,
  nome varchar(50) NOT NULL
);
CREATE TABLE gioco (
  id int PRIMARY KEY,
  nome varchar(50) NOT NULL,
  id_tematica int,
  CONSTRAINT fk_tematica FOREIGN KEY (id_tematica) REFERENCES tematica (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE quesito (
  id int PRIMARY KEY,
  testo text NOT NULL,
  id_gioco int NOT NULL,
  CONSTRAINT fk_gioco FOREIGN KEY (id_gioco) REFERENCES tematica (id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE risposta (
  id int PRIMARY KEY,
  testo text NOT NULL
);
CREATE TABLE risposte_quesiti(
  id_quesito int,
  id_risposta int,
  risposta_corretta boolean NOT NULL DEFAULT 0,
  CONSTRAINT pk_risposte_quesiti PRIMARY KEY (id_quesito, id_risposta),
  CONSTRAINT fk_quesito FOREIGN KEY (id_quesito) REFERENCES quesito (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_risposta_corretta FOREIGN KEY (id_risposta) REFERENCES risposta (id) ON DELETE CASCADE ON UPDATE CASCADE
);