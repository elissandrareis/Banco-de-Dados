CREATE DATABASE AgroTech;

USE AgroTech;

CREATE TABLE Sensor(
    idSensor INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nomeSensor VARCHAR(100),
    temperatura DOUBLE,
    umidade DOUBLE,
    dtInfo DATETIME
);

CREATE TABLE TipoUsuario(
    idTipoUsuario INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tipo VARCHAR (10)
);

CREATE TABLE Fazenda(
    idFazenda INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    hectar DOUBLE,
    tipoPlantacao VARCHAR(15),
    endereco VARCHAR(150)
);

CREATE TABLE Empresa(
    idEmpresa INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nomeEmpresa VARCHAR(100),
    CNPJ CHAR(11) UNIQUE,
    endereco VARCHAR(150),
    cidade VARCHAR(45),
    fkFazenda INT,
    FOREIGN KEY (fkFazenda) REFERENCES Fazenda(idFazenda)
);

CREATE TABLE Usuario(
    idUsuario INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nomeUsuario VARCHAR(65),
    CPF CHAR(11) UNIQUE,
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(100),
    fkTipoUsuario INT,
    FOREIGN KEY (fkTipoUsuario) REFERENCES TipoUsuario(idTipoUsuario),
    fkEmpresa INT,
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEMpresa),
);
