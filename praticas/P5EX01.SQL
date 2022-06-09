create database pet;

use pet;

create table cliente (
idcliente int primary key auto_increment,
nome varchar (45),
telefonefixo varchar (45),
telefonecel varchar (45),
endereço varchar (45));

insert into cliente values

(null, 'Elissandra Reis', 41383534, 75562256, 'rua renato russo'),
(null, 'Santa Verissimo', 46844617, 83201441, 'rua izaias felix dos santos'),
(null, 'Elisangela Reis', 41383534, 70956780, 'rua renato russo'),
(null, 'Debora Cavalcante', 41392566, 88322350, 'rua manoel rodrigues da rocha'),
(null, 'Daiane Tavares', 41394087, 54321789, 'rua renato russo');

create table pet (
idpet int primary key auto_increment,
tipo varchar (45),
nome varchar (45),
raça varchar (45),
dtnasc date,
fkcliente int,
foreign key (fkcliente) references cliente (idcliente),
constraint chkTipo check 
(tipo = 'cachorro' or tipo = 'gato')
) auto_increment = 101;

insert into pet values

(null, 'cachorro', 'milady', 'vira-lata', '2013-03-13', 1),
(null, 'gato', 'sophia', 'srd', '2018-02-17', 2),
(null, 'gato', 'maggie', 'vira-lata', '2011-07-01', 3),
(null, 'cachorro', 'belinha', 'shih-tzu', '2013-10-28', 4),
(null, 'gato', 'pantufa', 'srd', '2020-02-17', 5),
(null, 'cachorro', 'valentina', 'vira-lata', '2016-07-12', 1);

select * from cliente;
select * from pet;

alter table cliente modify nome varchar (50);

select * from pet where tipo= 'cachorro';

select nome, dtnasc from pet;

select * from pet order by nome;

select * from cliente order by endereço desc;

select * from pet where nome like '%m_%';

select * from cliente where nome like '%Reis%';

update cliente set telefonefixo = 41374554 WHERE idcliente = 1;
select * from cliente;

select * from pet join cliente on cliente.idcliente = pet.fkcliente;

select * from cliente join pet on cliente.idcliente = pet.fkcliente where cliente.nome = 'Debora Cavalcante';

delete from pet where nome = 'sophia';

select * from pet;

drop table pet, cliente;



 
 


