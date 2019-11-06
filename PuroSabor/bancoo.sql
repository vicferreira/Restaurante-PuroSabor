



-- -----------------------------------------------------
     create database loginn;
     use database loginn;
-- -----------------------------------------------------

INSERT INTO `banco_purosabor`.`tb_usuarios` (`CPF`, `nome`, `senha`) VALUES ('12345678910', 'admin', 'admin');
INSERT INTO `banco_purosabor`.`tb_usuarios` (`CPF`, `nome`, `senha`) VALUES ('02344567890', 'Ana', '1234');
INSERT INTO `banco_purosabor`.`tb_usuarios` (`CPF`, `nome`, `senha`) VALUES ('09843266594', 'Fernando', '5678');
INSERT INTO `banco_purosabor`.`tb_usuarios` (`CPF`, `nome`, `senha`) VALUES ('12365799423', 'Jonas', 'ad123');
INSERT INTO `banco_purosabor`.`tb_usuarios` (`CPF`, `nome`, `senha`) VALUES ('19230455697', 'Maria', '10122');
INSERT INTO `banco_purosabor`.`tb_usuarios` (`CPF`, `nome`, `senha`) VALUES ('26095111971', 'Rita', '14566');
INSERT INTO `banco_purosabor`.`tb_usuarios` (`CPF`, `nome`, `senha`) VALUES ('32959768245', 'Gabriel', 'mi126');
INSERT INTO `banco_purosabor`.`tb_usuarios` (`CPF`, `nome`, `senha`) VALUES ('39824424519', 'Isabela', '19010');
INSERT INTO `banco_purosabor`.`tb_usuarios` (`CPF`, `nome`, `senha`) VALUES ('46689080793', 'Vitor', '23454');


-- -----------------------------------------------------

	 Create table pedidos; 
	 use pedidos;
-- -----------------------------------------------------

INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1000', 'salada de bacalhau', 'bacalhau, folhas verdes e azeitonas', '0', 'entrada');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1001', 'bolinho de frango com catupiry', 'bolinho frito', '0', 'entrada');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1002', 'couvert', 'cesta de pães, azeitonas e  queijos', '15', 'entrada');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1003', 'tábua de frios e queijos', 'consulte as opções disponíveis', '22.9', 'entrada');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1004', 'pastéis fritos', 'nos sabores carne, queijo e frango', '0', 'entrada');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1005', 'risoto de camarão', 'acompanha queijo ralado e torradas', '68', 'principal');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1006', 'filé a parmegiana', 'carne ou frango', '45', 'principal');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1007', 'lasanha à bolonhesa', 'molho branco ou molho de tomate', '0', 'principal');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1008', 'feijoada', 'acompanha arroz e farofa', '39.9', 'principal');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1009', 'Escondidinho de carne', 'feito com mandioca', '28', 'principal');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1010', 'sorvete', 'consulte os sabores', '8', 'sobremesa');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1011', 'pavê de chocolate', '', '10', 'sobremesa');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1012', 'petit gateau', '', '0', 'sobremesa');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1013', 'cascata gelada', 'sorvete de creme,biscoito e calda de chocolate', '18', 'sobremesa');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1014', 'pudim', 'sem obs', '10', 'sobremesa');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1015', ' água mineral sem gás', '', '0', 'bebida');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1016', ' águal mineral com gás', '', '6', 'bebida');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1017', 'sucos', 'sem obs', '10', 'bebida');
INSERT INTO `banco_purosabor`.`tb_itens` (`codigo`, `nomeI`, `descricao`, `preco`, `categoria`) VALUES ('1018', 'refrigerante lata', '', '6', 'bebida');


-- -----------------------------------------------------
 	create table lista_pedidos;
	use lista_pedidos;
 -----------------------------------------------------

INSERT INTO `banco_purosabor`.`tb_pedidos` (`numero`, `status`, `mesa`, `tb_usuarios_cpf`) VALUES ('101', '1', '2', '12345678910');
INSERT INTO `banco_purosabor`.`tb_pedidos` (`numero`, `status`, `mesa`, `tb_usuarios_cpf`) VALUES ('102', '0', '4', '02344567890');
INSERT INTO `banco_purosabor`.`tb_pedidos` (`numero`, `status`, `mesa`, `tb_usuarios_cpf`) VALUES ('103', '1', '7', '09843266594');
INSERT INTO `banco_purosabor`.`tb_pedidos` (`numero`, `status`, `mesa`, `tb_usuarios_cpf`) VALUES ('105', '0', '8', '12365799423');
INSERT INTO `banco_purosabor`.`tb_pedidos` (`numero`, `status`, `mesa`, `tb_usuarios_cpf`) VALUES ('104', '0', '6', '19230455697');

-- -----------------------------------------------------
   Create table item_pedidos;
   use item_pedidos;
-- -----------------------------------------------------
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1000', '101');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1008', '101');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1011', '101');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1015', '101');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1017', '101');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1005', '102');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1010', '102');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1018', '102');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1004', '103');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1006', '103');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1017', '103');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1010', '103');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1009', '104');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1014', '104');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1016', '104');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1001', '105');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1007', '105');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1013', '105');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1016', '105');
INSERT INTO `banco_purosabor`.`tb_itens_has_tb_pedidos` (`tb_itens_codigo`, `tb_pedidos_numero`) VALUES ('1017', '105');

