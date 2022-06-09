-- CRIAR O BANCO DE DADOS
CREATE DATABASE faculdade; 

-- USAR O BANCO DE DADOS 
USE faculdade;

-- CRIAR A TABELA ALUNO
CREATE TABLE Aluno (
ra CHAR(8) PRIMARY KEY,
nome VARCHAR(100),
bairro VARCHAR(50),
email VARCHAR(60)
);

-- EXIBIR A TABELA ALUNO
SELECT * FROM Aluno;

-- INSERIR DADOS NA TABELA ALUNO
INSERT INTO Aluno VALUES ("01221006", "Elissandra", "Sítio das madres", "elissandra.silva@sptech.school");

-- EXIBIR A TABELA ALUNO
SELECT * FROM Aluno;

-- INSERIR VARIOS ALUNOS NO MESMO COMANDO
INSERT INTO Aluno VALUES
('01221141', "Matheus", "Paraiso", "matheus@sptch.school"),
('01221116', 'Yuri', 'Vila Alpina', 'yuri@sptech.school'),
('01223317', 'Nildo', 'consolação', 'nildo@sptech.school'),
('01441006', 'Pedro', 'jaraguá', 'pedro@sptech.school');

-- EXIBIR OS DADOS DOS ALUNOS EM ORDEM CRESCENTE, PELO NOME
SELECT * FROM Aluno ORDER BY nome;

-- EXIBIR OS DADOS DOS CAMPOS ALTERNADOS    
SELECT ra, nome, bairro, email, FROM Aluno;      

-- EXIBIR O BAIRRO DOS ALUNOS ORDENADOS PELO NOME
SELECT bairro FROM Aluno ORDER BY nome;  

-- ORDEM DECRESCENTE 

SELECT * FROM Aluno ORDER BY ra DESC;

-- EXIBIR APENAS OS DADOS DO ALUNO Matheus 
SELECT * FROM Aluno WHERE nome = 'Matheus';
SELECT * FROM Aluno WHERE ra = '01123973';
SELECT * FROM Aluno WHERE bairro = 'Paraiso';
SELECT * FROM Aluno WHERE email = 'matheus2sptehshool';

-- EXIBIR OS NOMES QUE TERMINAM COM s
SELECT nome FROM Aluno WHERE nome LIKE '%S';
SELECT nome FROM Aluno WHERE nome LIKE 'Y%';
SELECT nome FROM Aluno WHERE nome LIKE '%U%';

INSERT INTO Aluno VALUES ('01221999', 'Samuel', null, null);

-- ATUALIZAR O BAIRRO DO SAMUEL 
UPDATE Aluno SET bairro = 'Centro' WHERE ra = '01221999'; 
SELECT * FROM Aluno;
UPDATE Aluno set email = 'samuel@sptech.school' WHERE  ra = '01221999'; 

-- EXCLUIR A TABELA ALUNO 
DROP TABLE Aluno;

