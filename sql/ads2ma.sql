CREATE TABLE `usuario` (
  `cpf` integer PRIMARY KEY,
  `nome` varchar(255),
  `sobrenome` varchar(255),
  `idade` integer
);

CREATE TABLE `cadastro_pj` (
  `cnpj` integer PRIMARY KEY,
  `nome_empresa` varchar(255),
  `tipoatvidade` varchar(255)
);

CREATE TABLE `produto` (
  `id` integer PRIMARY KEY,
  `nome` varchar(255),
  `descricao` varchar(255),
  `codigoqr` integer
);

ALTER TABLE `cadastro_pj` ADD FOREIGN KEY (`cnpj`) REFERENCES `usuario` (`cpf`);

ALTER TABLE `produto` ADD FOREIGN KEY (`id`) REFERENCES `cadastro_pj` (`cnpj`);
