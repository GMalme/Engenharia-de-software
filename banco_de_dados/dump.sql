CREATE DATABASE teatro;
USE tatro;

CREATE TABLE IF NOT EXISTS `teatro`.`participantes` (
  `matricula` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `sobrenome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `telefone` VARCHAR(20) NOT NULL,
  `data_cadastro` DATETIME NOT NULL,
  PRIMARY KEY (`matricula`));