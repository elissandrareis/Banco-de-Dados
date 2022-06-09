CREATE TABLE AgroTech;

USE AgroTech;

CREATE TABLE Usuario(
	idUser INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha VARCHAR(50),
    cpf CHAR(11)
);

CREATE TABLE Sensor(
	idSensor INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nomeSensor VARCHAR(50),
    temperatura DOUBLE,
    umidade DOUBLE,
    dtInfo DATETIME
);