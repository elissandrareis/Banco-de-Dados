-- criar banco de dados chamado revisão
CREATE DATABASE REVISÃO;

-- SELECIONAR O BANCO DE DADOS
-- USE REVISÃO;

-- CRIAR A TABELA MÍDIA
CREATE TABLE MIDIA (
idMidia int primary key auto_increment,
nome varchar (100),
tamanho double NOT NULL,
dtMidia DATETIME default current_timestamp,
preco decimal(5,2) default 1.99,
tipo varchar(50), 
-- constraint chkTipo check
check (tipo = 'audio' or tipo= 'video' or tipo= 'imagem')
)auto_increment= 100;

-- constraint = restrição

-- Inserir dados na tabela midia
-- o comando abaixo dará erro

INSERT INTO MIDIA (NOME, TAMANHO, TIPO) VALUES
('FOTO DAS ANTIGAS',100.99, 'FILME');

-- CHECK CONSTRAINT 'chkTipo' is violated.
-- EXCLUIR A CONSTRAINT check table
ALTER TABLE MIDIA DROP CHECK chkTipo;

-- ADICIONAR CHECK NOVAMENTE
ALTER TABLE MIDIA ADD CHECK (TIPO = 'AUDIO' OR TIPO = 'VIDEO');

-- DESCREVER A ESTRUTURA DA TABELA
DESC MIDIA;

-- INSERIR DADOS AGORA QUE FUNCIONAM
INSERT INTO MIDIA (NOME, TAMANHO, TIPO) VALUES
('VIDEO DAS ANTIGAS', 100.99, 'VIDEO'),
('AUDIO NOVO', 99, 'AUDIO');

SELECT * FROM MIDIA;

-- QUESTÃO 3

-- ADICIONAR UM CHAMADO LOCALIZAÇÃO TAMANHO (120)
-- E ATUALIZAR O CAMPO LOCALIZAÇÃO NOS DADOS JÁ INSERIDOS

ALTER TABLE MIDIA ADD LOCALIZAÇÃO VARCHAR(120);
DESC MIDIA;
SELECT * FROM MIDIA;

UPDATE MIDIA SET LOCALIZAÇÃO = 'CONSOLAÇÃO' WHERE idMidia in (100,101);

SELECT * FROM MIDIA;
SELECT NOME, PRECO FROM MIDIA;

SELECT * FROM MIDIA WHERE NOME = 'VIDEO DAS ANTIGAS';
SELECT * FROM MIDIA WHERE PRECO = 1.99;

SELECT * FROM MIDIA ORDER BY NOME;
SELECT * FROM MIDIA ORDER BY NOME DESC;

SELECT * FROM MIDIA WHERE NOME LIKE 'A%';
SELECT * FROM MIDIA WHERE NOME LIKE '%O';
SELECT * FROM MIDIA WHERE NOME LIKE '_U%';
SELECT * FROM MIDIA WHERE NOME LIKE '%V';
SELECT * FROM MIDIA WHERE NOME LIKE '%V_';

-- EXIBIR OS NOME QUE CONTÉM A LETRA D
SELECT * FROM MIDIA WHERE NOME LIKE '%D%';

-- UPDATE (SINTAXE)
-- UPDATE NOMEDATABELA SET NOMEDOCAMPOATUALIZADO = DADOATUALIZADO
-- WHERE CHAVEPRIARIA= NUMEROINTEIRO;



-- MODIFICAR O CAMPO LOCALIZACAO PARA O TAMANHO 80
ALTER TABLE MIDIA MODIFY COLUMN LOCALIZACAO VARCHAR(80);
DESC MIDIA;

ALTER TABLE MIDIA RENAME COLUMN NOME TO nomeMidia;
DESC MIDIA;
