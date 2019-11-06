




create database loginn;
use loginn;

Create table usuarios (
ID Int UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
CPF Varchar(15),
Mesa Varchar(200),
senha Varchar(40),
Nome varchar(30),
Primary Key (ID)) ENGINE = MyISAM;

Create table pedidos(
numero int,
status tinyint,
mesa int,
usuario_CPF int(15));

Create table lista_pedidos(
codigo int,
nome varchar(40),
descricao varchar(255),
preco float,
categoria enum));

Create table item_pedidos(
itens_codigo int,
pedidos_numero int));
