CREATE DATABASE dbCurso;

USE dbCurso;

CREATE TABLE tblCurso(
idCurso int PRIMARY KEY IDENTITY(1,1),
Nome varchar(200) NOT NULL,
);

CREATE TABLE tblAluno(
idAluno int PRIMARY KEY IDENTITY(1,1),
Nome varchar(100) NOT NULL,
Sobrenome varchar(200) NOT NULL,
 idCurso int,
CONSTRAINT fk_idCurso FOREIGN KEY(idCurso) REFERENCES tblCurso(idCurso)
);

INSERT INTO tblCurso VALUES ('Psicologia');
INSERT INTO tblAluno VALUES ('Yasmin','Vargas',1);

SELECT * FROM tblCurso;
SELECT * FROM tblAluno;