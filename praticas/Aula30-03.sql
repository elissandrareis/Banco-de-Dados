create database funcionario;

use funcionario;

-- criar tabela
create table funcionario (
idFunc int primary key auto_increment,
nomefunc varchar (45),
salario decimal (10,2), check (salario >0),
genero char (1), check (genero = 'f' or genero = 'm')
);

insert into funcionario values
(null, 'franklin', 1.99, 'm'),
(null, 'joao', 1.98,'m'),
(null,'maria', 2.99, 'f');

-- criar a tabela dependente
create table dependente (
idDep int,
nomeDep varchar(45),
dtNasc DATE,
fkfunc int, foreign key (fkfunc) references funcionario(idfunc),
primary key (idDep,fkfunc)
);

insert into dependente values
(1, 'laura', '2000-10-13',1),
(2, 'laura', '1999-10-13',1),
(1, 'joana', '1995-10-13',2),
(1, 'mario', '1998-10-13',3);

select idDep, fkfunc, nomeDep, dtNasc from dependente order by fkfunc;

select * from funcionario join dependente on idfunc = fkfunc;

insert into funcionario values
(null, 'vivian', 0.99, 'f');

select * from funcionario left join dependente on idFunc= fkfunc where fkfunc is null;

alter table funcionario add fkSupervisor int, add foreign key (fkSupervisor) references funcionario (idfunc);

update funcionario set fkSupervisor = 1 where idFunc in (2,3);

select * from funcionario;

select nomefunc, fkSupervisor from funcionario;

select * from funcionario as funcionario join funcionario as supervisor on supervisor.idFunc = funcionario.fkSupervisor;


