-- CRIAR BANCO DE DADOS SPRINT2 
USE SPRINT2;
-- CRIE UMA TABELA CHAMADA MUSICA
CREATE TABLE MUSICA (
idMusica int primary key auto_increment,
Titulo varchar(40),
Artista varchar(40),
Genero  varchar(40)
);

-- inserir dados na tabela
INSERT INTO MUSICA VALUES
(null, 'juice', 'doja cat', 'pop'),
(null, 'my love', 'justin timberlake', 'R&B'),
(NULL, 'say so', 'doja cat', 'rap');
SELECT*FROM MUSICA;

-- Criar a tabela chamada Album
CREATE TABLE ALBUM (
idAlbum int primary key auto_increment,
Nome varchar(40),
Tipo varchar(50),
dtLançamento DATE);

SELECT * FROM ALBUM;

-- INSERIR PELO MENOS DOIS ALBUNS
 INSERT INTO ALBUM (idAlbum, Nome, Tipo, dtLançamento) VALUES
 (NULL, 'HOT PINK', 'DIGITAL', '2019-11-07'),
 (NULL, 'FUTURESEXLOVESOUND', 'FISICO', '2006-09-08'),
 (NULL, 'HOT PINK', 'DIGITAL', '2019-11-07');
 
 -- INSERIR A MODELAGEM LÓGICA CONFORME A REGRA DO NEGÓCIO
 select * from MUSICA;
 select * from ALBUM;
 
 ALTER TABLE MUSICA ADD COLUMN fkidAlbum int;
 ALTER TABLE MUSICA add foreign key (fkidAlbum) references ALBUM (idAlbum);
 
 select * from MUSICA;
 UPDATE MUSICA SET fkidAlbum = 1 WHERE idMusica = 1;
 UPDATE MUSICA SET fkidAlbum = 2 WHERE idMusica = 2;
 UPDATE MUSICA SET fkidAlbum = 3 WHERE idMusica = 3;
 
-- EXIBIR TODOS OS DADOS DAS DUAS TABELAS SEPARADAMENTE
SELECT * FROM MUSICA;
SELECT * FROM ALBUM;

-- EXIBIR AS MUSICAS COM OS SEUS RESPECTIVOS ALBUNS 
SELECT MUSICA.Titulo, ALBUM.Nome FROM MUSICA join ALBUM ON ALBUM.idAlbum = MUSICA.fkidAlbum;

-- EXIBIR SOMENTE O TITULO DA MUSICA E O NOME DO SEU RESPECTIVO ALBUM
SELECT MUSICA.Titulo, ALBUM.Nome FROM MUSICA join ALBUM 
on ALBUM.idAlbum = MUSICA.fkidAlbum WHERE MUSICA.Titulo = 'say so';

-- EXIBIR OS DADOS DAS MUSICAS E SEUS RESPECTIVOS ALBUNS DE DETERMINADO TIPO
SELECT MUSICA.Titulo, ALBUM.Nome FROM MUSICA join ALBUM on ALBUM.idAlbum = MUSICA.fkidAlbum WHERE ALBUM.Tipo = "Fisico";


