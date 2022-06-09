use sprint2;

 create table curso(
 idCurso int primary key auto_increment,
 nome varchar (50),
 sigla varchar (3),
 coordenador varchar (50)
 );
 
 select * from curso;
 
 insert into curso value
 (null, 'analise e desenvolvimento de sistemas', 'ads', 'Gerson'),
 (null, 'sistema da informação', 'sis', 'brandão'),
 (null, 'ciencia da computação', 'cco', 'monica');
 
 create table aluno(
 idAluno int primary key auto_increment,
 nome varchar (50),
 sobrenome varchar (50),
 idade varchar (2),
 fkidCurso int, 
 foreign key (fkidcurso) references curso (idCurso)
 );
 
 insert into aluno value
 (null, 'rafael', 'theodoro', 32, 1),
 (null, 'wesley', 'felix', 25, 2),
 (null, 'lucas', 'hessel', 21, 3 );
 
 select * from curso join aluno on curso.idCurso = aluno.fkidCurso;
 
select curso.nome, aluno.sobrenome from aluno join curso on curso.idCurso = aluno.fkidCurso where curso.sigla = 'ads'; 
alter table curso add constraint chksigla check (sigla in ('ads', 'cco', 'sis'));

