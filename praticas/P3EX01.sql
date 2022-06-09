-- Crie uma tabela chamada sprint 2
CREATE DATABASE SPRINT2;
USE SPRINT2;
CREATE TABLE ATLETA (
idAtleta int primary key auto_increment,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int);

select*from atleta;

-- Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade e pelo menos 5 atletas
INSERT INTO ATLETA (idAtleta, nome, modalidade, qtdMedalha) values
(null, 'Marta', 'futebol', 36),
(null, 'cristiane', 'futebol', 29),
(null, 'bruninho', 'volei', 35),
(null, 'douglas', 'volei', 56),
(null, 'cesar', 'natação', 47);

-- Crie uma tabela chamada país

CREATE TABLE PAÍS (
idPaís int primary key auto_increment,
Nome varchar(30),
Capital varchar(40));
select*from país;

-- Inserir quatro países na tabela
INSERT INTO PAÍS VALUES
(null, 'Brasil', 'brasilia'),
(null, 'EUA', 'Washington'),
(null, 'Italia', 'Roma'),
(null, 'Africa','Luanda');


ALTER TABLE ATLETA ADD column fkPaís int;
ALTER TABLE ATLETA add foreign key (fkPaís)
references PAÍS (idPaís);

-- Atualizar o país de todos os atletas

UPDATE ATLETA SET fkPaís = 1 WHERE idAtleta = 1;
UPDATE ATLETA SET fkPaís = 2 WHERE idAtleta = 2;
UPDATE ATLETA SET fkPaís = 3 WHERE idAtleta = 3;
UPDATE ATLETA SET fkPaís = 4 WHERE idAtleta = 4;

-- Exibir os atletas e seu respectivo país;
select ATLETA.nome, PAÍS.Nome from ATLETA join PAÍS on PAÍS.idPaís = ATLETA.fkPaís;
DROP DATABASE SPRINT2;
-- Exibir apenas o nome do atleta e o nome do respectivo país
select ATLETA.nome, PAÍS.Nome from ATLETA join PAÍS ON PAÍS.idPaís = ATLETA.fkPaís WHERE PAÍS.Nome = 'ITALIA';

-- EXIBIR OS DADOS DOS ATLETAS, SEUS RESPECTIVOS PAÍS DE UMA DETERMINADA CAPITAL
select ATLETA.nome, PAÍS.Capital from ATLETA join PAÍS ON PAÍS.idPaís = ATLETA.fkPaís WHERE PAÍS.Capital = 'ROMA';








