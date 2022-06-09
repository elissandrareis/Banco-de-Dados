create database Continuada2;

use Continuada2;

create table hotel(
idHotel int primary key auto_increment,
nome varchar (50),
endereço varchar (50)
);

create table Quarto(
idQuarto int primary key auto_increment,
nome varchar (45),
andar varchar (45),
tipo varchar (45),
fkhotel int,
foreign key (fkhotel) references hotel (idhotel));


insert into hotel values

(null, 'fazano', 'av nelson jordano' ),
(null, 'paulista', 'av augusta' ),
(null, 'family', 'av kizaemon takeut' ),
(null, 'plaza', 'av renato russo' ),
(null, 'estrelas', 'av izais felix' ),
(null, 'lua', 'av cassia eller' );

insert into Quarto values

(null, 'suite ', 'decimo', 'cama casal', 1 ),
(null, 'executivo', 'nono', 'cama casal', 2),
(null, 'oceano', 'oitavo', 'solteiro', 3),
(null, 'luzes', 'setimo', 'cama casal', 4),
(null, 'simples', 'sexto', 'solteiro', 5),
(null, 'normal', 'quinto', 'cama casal', 6);

-- a) Exibir todos os dados das tabelas separadamente. 
select * from hotel;

select * from Quarto;

-- b) Exibir os dados dos hotéis e seus respectivos quartos.

select * from hotel join quarto on fkhotel = idhotel;

-- Professora, consegui fazer só até aqui, depois não consegui executar os comandos do jeito correto.

-- c) Exibir apenas o nome do hotel e o nome dos respectivos quartos do tipo 'solteiro'

select  hotel.family from (idHotel)join Quarto.oceano on hotel(idQuarto)= 3; 
-- tentei executar de diversas formas esse comando mas não consegui lembrar de nenhum

-- d) Exibir os dados dos hotéis e sua respectiva matriz; (nao consegui lembrar de como inserir as matrizes separadamente)

-- e) Exibir apenas o nome e o andar de um determinado quarto que contém uma determinado caracter;

select 'suite', 'decimo'; 
-- foi, mas não sei se está certo.

-- f) Atualize o tipo de algum quarto. Exiba novamente os dados da tabela após a atualização. 

update Quarto set solteiro = 3;
-- não aparece o erro, mas quando vou executar da erro.

-- Exclua algum quarto da tabela. Exiba novamente os dados da tabela após a exclusão. 

drop database Continuada2;
 
 -- Professora eu estudei. Mas não consegui de novo. Sei que é ruim pra mim, mas me desculpa por te decpcionar.




