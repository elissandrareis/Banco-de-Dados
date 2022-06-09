create database avaliacao;
use avaliacao;

create table grupo (
idgrupo int primary key auto_increment,
nome varchar (45),
descrição varchar (155)
);

create table professor (
idprofessor int primary key auto_increment,
nome varchar (45),
disciplina varchar (45)
)auto_increment = 10000;

create table aluno(
idaluno int primary key,
nome varchar (45),
email varchar (45),
fkgrupo int,
foreign key (fkgrupo)references grupo(idgrupo)
);


create table avaliacao(
idavaliacao int auto_increment,
fkgrupo int,
foreign key (fkgrupo) references grupo (idgrupo),
fkprofessor int,
foreign key (fkprofessor) references professor (idprofessor),
dthora datetime,
nota float,
primary key (idavaliacao, fkgrupo, fkprofessor));



insert into grupo values

(null, 'proxmoov', 'monitoramento de movimento'),
(null, 'agrocompany', 'monitoramento de soja e açucar');

select * from grupo;

insert into professor values

(null, 'vivian', 'banco de dados'),
(null, 'frizza', 'algoritmos'),
(null, 'ellen', 'matemática');

select * from professor;

insert into aluno values

(11, 'elissandra', 'elissandra.silva@sptech.school', 1),
(22, 'matheus', 'matheus.nasci@sptech.school', 2),
(33, 'lucas', 'lucas.hessel@sptech.school', 1),
(44, 'andrey','andrey@sptech.school', 2),
(55, 'valetim','valentim@sptech.school', 1),
(66, 'rafael','rafael@sptech.school', 2);

select * from aluno;

insert into avaliacao values 
(null, 1, 10000, '1996-09-12 18:45:09',5.9),
( null, 2, 10001, '2000-07-24 18:45:09',1.8),
( null, 1, 10002, '2009-04-11 11:45:09',3.4);

select * from avaliacao;


select * from avaliacao;
select * from aluno;
select * from grupo;
select * from professor;

select aluno.nome, aluno.email,  grupo.nome, grupo.descrição from grupo join aluno on aluno.fkgrupo = grupo.idgrupo;

select * from grupo join aluno on grupo.idgrupo = aluno.fkgrupo 
where grupo.idgrupo = 2;

-- Professora consegui fazer só até aqui, mas vou terminar!







