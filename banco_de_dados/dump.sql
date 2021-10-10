CREATE DATABASE IF NOT EXISTS teatro;
USE teatro;

CREATE TABLE IF NOT EXISTS `teatro`.`participantes` (
`idParticipante` INT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(100) NOT NULL,
`sobrenome` VARCHAR(100) NOT NULL,
`email` VARCHAR(100) NOT NULL,
`telefone` VARCHAR(20) NOT NULL,
`senha` VARCHAR(20) NOT NULL,
`cargo` VARCHAR(20) NOT NULL,
`idPeca` INT NOT NULL,
PRIMARY KEY (`idParticipante`)
);

CREATE TABLE IF NOT EXISTS `teatro`.`peca` (
`idPeca` INT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(100) NOT NULL,
`classificacao` VARCHAR(100) NOT NULL,
`tipo` VARCHAR(100) NOT NULL,
`idParticipante` INT NOT NULL,
`idSessao` INT NOT NULL,
PRIMARY KEY (`idPeca`)
);

CREATE TABLE IF NOT EXISTS `teatro`.`sessao` (
`idSessao` INT NOT NULL AUTO_INCREMENT,
`data` VARCHAR(10) NOT NULL,
`horario` VARCHAR(100) NOT NULL,
`assentos` INT NOT NULL,
`idPecas` INT NOT NULL,
`idSalao` INT NOT NULL,
PRIMARY KEY (`idSessao`)
);

CREATE TABLE IF NOT EXISTS `teatro`.`sala` (
`idSala` INT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(100) NOT NULL,
`capacidade` INT NOT NULL,
`idSessao` INT NOT NULL,
PRIMARY KEY (`idSala`)
);

CREATE TABLE IF NOT EXISTS `teatro`.`ingresso` (
`idPeca` INT NOT NULL AUTO_INCREMENT,
`preco` INT NOT NULL,
`tipo` VARCHAR(100) NOT NULL,
`idSessao` INT NOT NULL,
PRIMARY KEY (`idPeca`)
);