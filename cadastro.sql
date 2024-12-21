CREATE USER cadastro identified by 'cadastro';
GRANT ALL privileges on *.* TO 'cadastro';

create schema foguetes;
use foguetes;

CREATE TABLE `lancamento` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`nome_foguete` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`local_lancamento` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
`email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
`telefone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

