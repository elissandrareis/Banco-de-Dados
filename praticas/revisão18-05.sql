create database revisao;

use revisao;

create table motorista(
id int primary key auto_increment,
nome varchar (45),
cnh char (11),
validade date,
categoria char (4));

insert into motorista values 
(null, 'vivian', '12345678900', '2023-10-13', 'b');

select*from motorista;

create table carro (
idcarro int primary key auto_increment,
modelo varchar (45),
placa char (7),
estado char (2),
fkmotora int,
foreign key (fkmotora) references motorista(id));

insert into carro values 

(null, 'i30', 'abc1234', 'sp', 1);

select * from carro;

create table carroauto (
id int primary key auto_increment,
modelo varchar (45),
placa char (7),
estado char (2));

insert into carroauto values

(null, 'jetta', 'def5678', 'sc');

select * from carroauto;

create table motoraauto (
idmotora int auto_increment,
fkcarro int,
foreign key (fkcarro) references carroauto(id),
primary key (idmotora, fkcarro),
cnh char (11),
validade date,
categoria char(4));

alter table motoraauto add nome varchar(45) after fkcarro;

desc motoraauto;

insert into motoraauto values

(null, 1, 'franklin', '00987654321', '2023-12-18', 'b');

select * from motoraauto;

select motoraauto.nome, carroauto.modelo from motoraauto join carroauto on idmotora = fkcarro;

-- recursividade

create table motora (
idmotora int primary key auto_increment,
nome varchar (45),
cnh char (11),
validade date,
categoria char (4),
fkcondprincipal int, 
foreign key (fkcondprincipal) references motora(idmotora));

insert into motora (nome) values

('sptech');

insert into motora values

(null, 'rafael', '13579008642', '2023-01-24', 'ab', null);

select*from motora;

update motora set fkcondprincipal = 2 where idmotora = 1;

select * from motora as motorista join motora as condutor on motorista.fkcondprincipal = condutor.idmotora;

select motorista.nome as empresa, condutor.nome as nome from motora as motorista join motora as condutor on motorista.fkcondprincipal = condutor.idmotora;

select concat('a empresa ', motorista.nome, ' possui como principal condutor o motorista ', motorista.nome) as relatorio from motora motorista join motora condutor on motorista.fkcondprincipal = condutor.idmotora;

-- relacionamento n pra n (n-n) "muito pra muitos"

create table motoraaluguel(
id int primary key auto_increment,
nome varchar(45),
cnh char (11),
validade date,
categoria char(4));

insert into motoraaluguel values

(null, 'vivian', '12345678900', '2023-10-13', 'b');

create table carroaluguel (
idcarro int primary key auto_increment,
modelo varchar (45),
placa char (7),
estado char (2)) auto_increment = 10000;

insert into carroaluguel values

(null, 'i30', 'abc1234', 'sp'),
(null, 'jetta', 'def5678', 'sc');

select * from carroaluguel;

create table aluguel(
idaluguel int auto_increment,
fkmotora int,
foreign key (fkmotora) references motoraaluguel(id),
fkcarro int,
foreign key (fkcarro) references carroaluguel(idcarro),
primary key (idaluguel, fkmotora, fkcarro),
dtinicio datetime default current_timestamp, 
dtfim datetime,
valor decimal(10,2),
check (valor >= 0));

select sysdate();

insert into aluguel (fkmotora, fkcarro, valor) values

(1, 10000, 10.99);

select * from aluguel;

select * from motoraaluguel join aluguel on id = fkmotora join carroaluguel on idcarro = fkcarro;



