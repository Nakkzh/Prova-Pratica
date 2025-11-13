CREATE TABLE `usuarios` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`email` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`senha` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;

CREATE TABLE `produtos` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`nome_produto` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`marca` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`volume` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`tipo_embalagem` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	`aplicacao` ENUM('Doméstica','Industrial','Hospitalar') NOT NULL DEFAULT 'Doméstica' COLLATE 'utf8mb4_general_ci',
	`estoque` INT(11) NOT NULL DEFAULT '0',
	`estoque_minimo` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=3
;

CREATE TABLE `movimentações` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`produto_id` INT(11) NOT NULL,
	`usuarios_id` INT(11) NOT NULL,
	`tipo` ENUM('Entrada','Saída') NOT NULL COLLATE 'utf8mb4_general_ci',
	`quantidade` INT(11) NOT NULL,
	`data_movimentacao` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `produto_id` (`produto_id`) USING BTREE,
	INDEX `usuario_id` (`usuarios_id`) USING BTREE,
	CONSTRAINT `produto_id` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE,
	CONSTRAINT `usuario_id` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON UPDATE NO ACTION ON DELETE RESTRICT
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=3
;
