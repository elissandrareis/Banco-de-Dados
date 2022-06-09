use sprint1;

create table professor(
idProfessor int primary key auto_increment,
nome varchar (50),
sobrenome varchar (30),
especialidade1 varchar (40),
especialidade2 varchar (40)
);

select * from professor;

insert into professor values
(null, 'maria', 'mercedes', 'portugues', 'historia'),
(null, 'benicio', 'paes', 'biologia', 'geografia'),
(null, 'vivian', 'silva', 'banco de dados', 'fisioterapeuta'),
(null, 'claudio', 'frizza', 'algoritimos', 'ciencias'),
(null, 'thiago', 'gomes', 'socioemocional', 'treinamentos'),
(null, 'fernando', 'brandão', 'pesquisa', 'inovação');

create table disciplina(
idDisc int primary key auto_increment,
nomedisc varchar (45)
);

select * from disciplina;

insert into disciplina values

(null, 'professor'),
(null, 'monitor'),
(null, 'diretor');

select * from disciplina;

desc professor;
desc disciplina;

alter table professor add column fkidDisc int;
alter table professor add foreign key (fkidDisc) references disciplina (idDisc);
select * from professor;

update professor set fkidDisc=1 where idProfessor =1; 
update professor set fkidDisc=3 where idProfessor =2; 
update professor set fkidDisc=2 where idProfessor =3; 
update professor set fkidDisc=1 where idProfessor =4; 
update professor set fkidDisc=2 where idProfessor =5; 
update professor set fkidDisc=3 where idProfessor =6; 

select professor.nome, disciplina.nomedisc from professor join disciplina on professor.fkidDisc = disciplina.idDisc;

select disciplina.nomedisc, professor.nome from professor 
join disciplina on professor.fkidDisc = disciplina.idDisc where disciplina.nomedisc = 'professor';

select professor.nome, disciplina.nomedisc from professor join disciplina on professor.fkidDisc = disciplina.idDisc where professor.sobrenome = 'frizza';

select professor.especialidade1, disciplina.nomedisc from professor join disciplina 
on professor.fkidDisc = disciplina.idDisc where professor.nome = 'vivian';





