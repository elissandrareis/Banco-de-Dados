CREATE TABLE VIDEO (

idVideo INT PRIMARY KEY,
Titulo  VARCHAR (120),
Tamanho VARCHAR (272.45),
dtVideo VARCHAR (50)
);

INSERT INTO VIDEO VALUES

(987, 'infancia-video', '280', 1996-07-22),
(453, 'escola-video', '345', 1998-06-22),
(268, 'anivers-video', '987', 2000-07-22),
(765, 'igreja-video', '543', 2003-04-17),
(456, 'adolesc-video', '876', 2007-09-25);

ALTER TABLE VIDEO ADD COLUMN EDITOR VARCHAR (100);
SELECT * FROM VIDEO;
INSERT INTO VIDEO VALUES
(987, 'infancia-video', '280', 1996-07-22, 'elissandra'),
(453, 'escola-video', '345', 1998-06-22, 'elisangela'),
(268, 'anivers-video', '987', 2000-07-22, 'luiz'),
(765, 'igreja-video', '543', 2003-07-22, 'tata'),
(456, 'adolesc-video', '876', 2007-09-25, 'santa');
UPDATE VIDEO SET EDITOR = idVideo ='987';
UPDATE VIDEO SET EDITOR = idVideo='453';
UPDATE VIDEO SET EDITOR = idVideo='268';
UPDATE VIDEO SET EDITOR = idVideo='765';
UPDATE VIDEO SET EDITOR = idVideo='456';

-- Exibir todos os dados da tabela.
SELECT * FROM VIDEO;

-- Exibir apenas os titulos e os tamanhos dos vídeos.
SELECT * FROM VIDEO WHERE Titulo;
SELECT * FROM VIDEO WHERE Tamanho;

-- Exibir apenas os dados dos vídeos de um determinado editor
SELECT * FROM VIDEO WHERE EDITOR = 'elissandra';

--  Exibir os dados da tabela ordenados pela data em ordem crescente
SELECT * FROM VIDEO ORDER BY dtVideo DESC;

-- Exibir os dados da tabela ordenados pelo titulo em ordem decrescente
SELECT * FROM VIDEO ORDER BY Titulo DESC;

-- Exibir os dados da tabela, dos vídeos cujo titulo comece com uma determinada letra
SELECT * FROM VIDEO WHERE Titulo LIKE 'a%';

--  Exibir os dados da tabela, dos vídeos cujo tamanho termine com um determinado número
SELECT * FROM VIDEO WHERE Tamanho LIKE '%5';

-- Exibir os dados da tabela, dos vídeos cujo titulo tenha como segunda letra uma determinada letra. 
SELECT * FROM VIDEO WHERE Titulo LIKE '_s%';

-- Atualize o tamanho de um vídeo. Exiba novamente os dados da tabela após a atualização.
UPDATE VIDEO SET Tamanho = 'escola-video'= '355';
SELECT * FROM VIDEO;

-- Exclua algum vídeo. Exiba novamente os dados da tabela após a exclusão. 

DELETE FROM VIDEO WHERE '453';

SELECT * FROM VIDEO;









