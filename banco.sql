CREATE DATABASE IF NOT EXISTS `biblioteca`;
USE `biblioteca`;

CREATE TABLE IF NOT EXISTS `livro` (
	`livId` INT NOT NULL AUTO_INCREMENT,
	`livTitulo` VARCHAR(30) NOT NULL,
	PRIMARY KEY (`livId`)
);

CREATE TABLE IF NOT EXISTS `usuario` (
	`usuId` INTEGER NOT NULL AUTO_INCREMENT,
	`usuNome` VARCHAR(30) NOT NULL,
	`usuSexo` CHAR(1) NOT NULL,
	`usuLogin` CHAR(55) NOT NULL,
	`usuSenha` CHAR(55) NOT NULL,
	PRIMARY KEY (`usuId`)
);

CREATE TABLE IF NOT EXISTS `reserva` (
	`resid` INTEGER NOT NULL AUTO_INCREMENT,
	`resStatus` INTEGER NOT NULL,
	`livId` INTEGER NOT NULL,
	PRIMARY KEY (`resId`),
	FOREIGN KEY (`livId`) REFERENCES tb_cor(`livId`),
);

INSERT INTO
  `usuario`(`usuNome`, 'usuSexo', 'usuLogin', 'usuSenha')
VALUES
  ("James", 'Masculino', 'James', "123");
  ("Thomas", 'Masculino', 'Tom', "123");
  

INSERT INTO
  `reserva`(`tipo_nome`)
VALUES
  ("Informatica"),
  ("Escritorio/Decoracao"),
  ("Leitura"),
  ("Construcao");

INSERT INTO
  `livro`(`obj_nome`, `obj_cor`, `obj_tipo`)
VALUES
  ("Vaso", 3, 2),
  ("Mouse USB", 2, 1);
