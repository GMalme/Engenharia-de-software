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

  CREATE TABLE IF NOT EXISTS `peca`.`participantes` (
  `idPeca` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `classificacao` VARCHAR(100) NOT NULL,
  `tipo` VARCHAR(100) NOT NULL,
  `idParticipante` INT NOT NULL,
  `idSessao` INT NOT NULL,
  PRIMARY KEY (`idPeca`)
  );