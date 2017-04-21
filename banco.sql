create database if not exists db_edelivery;

use db_edelivery;

create table if not exists perfil
(
	id_perfil int primary key auto_increment,
	descricao varchar(10) not null
);
insert into perfil
(id_perfil, descricao)
values
(1, 'lojista'),
(2, 'cliente');

create table if not exists pessoa
(
	id_pessoa int primary key auto_increment,
	id_perfil int not null, 
	email varchar(100) unique key not null,
	senha varchar(70) not null,
	data_cadastro datetime default current_timestamp not null,
	nome varchar(20) not null,
	sobrenome varchar(40) not null,
	cpf varchar(12) not null,
	sexo char(1), /*0=f 1=m*/
	data_nascimento date not null,
	celular varchar(12),
	telefone varchar(12),
	contato varchar(12),
	constraint fk_id_perfil foreign key (id_perfil) references perfil (id_perfil)
);
insert into pessoa
(id_pessoa, id_perfil, email, senha, data_cadastro, nome, sobrenome, cpf, sexo, data_nascimento, celular, telefone, contato)
values
(1, 2, 'joao@email.com', '123456', '2017-03-01', 'joao', 'P. Silva', '12546789215', 1, '1984-08-21', '21987452654', null, null),
(2, 2, 'henrique@email.com', 'adcer54', '2016-12-10', 'Henrique', 'De Paula', '78653214895', 1, '1990-01-13', '21985463214', '2135984621', null),
(3, 1, 'roberta@email.com', '956rtc@31', '2017-02-21', 'Roberta', 'Nunes', '12255486379', 0, '1987-03-03', '21988546332', '2135652842', null),
(4, 1, 'paula@email.com', '854621regf', '2017-01-15', 'Paula', 'Fonseca', '78924586325', 0, '1978-06-10', '21975624159', '2121225478', null),
(5, 1, 'rodrigo@email.com', 'wfr45kgb', '2016-10-30', 'Rodrigo', 'Santos', '24954398703', 1, '1995-06-08', '21965744258', '2132594120', null);

create table if not exists loja
(
	id_loja int primary key auto_increment,
	id_pessoa int not null,
	nome_ec varchar(15),
	nome_fantasia varchar(30),
	cnpj varchar(15),
	data_cadastro datetime default current_timestamp(),
	email_ec varchar(100) unique key not null,
	telefone_ec varchar(12),
	celular_ec varchar(15),
	constraint fk_id_pesssoa foreign key (id_pessoa) references pessoa (id_pessoa)
);
insert into loja
(id_loja, id_pessoa, nome_ec, nome_fantasia, cnpj, data_cadastro, email_ec, telefone_ec, celular_ec)
values
(1, 5, 'Quentinha mix', 'Quentinha mix', null, '2016-10-30', 'quentinhamix@email.com', '2130191410', null),
(2, 3, 'Rainha das Quentinhas', null, null, '2017-02-21', 'rainha_quentinhas@email.com', '2136882175', null),
(3, 4, 'Pantriota', null, null, '2017-01-15', 'pantriota_delicia@email.com', '2128452239', null);

create table if  not exists endereco
(
	id_endereco int primary key auto_increment,
	id_pessoa int not null,
	cep varchar(8) not null,
	endereco varchar(40) not null,
	complemento varchar(30),
	numero int (10) not null,
	cidade varchar(40) not null,
	bairro varchar(40) not null,
	constraint fk_id_pesssoa_endereco foreign key (id_pessoa) references pessoa (id_pessoa)
);
insert into endereco
(id_endereco, id_pessoa, cep, endereco, complemento, numero, cidade, bairro)
values
(1, 1, '20511000', 'Avenida maracanã', null, 987, 'rio de janeiro', 'tijuca'),
(2, 2, '21210623', 'Avenida vicente carvalho',  null, 909, 'rio de janeiro', 'vila da penha'),
(3, 3, '22041012', 'Praça granito', null, 26, 'rio de janeiro', 'anchieta'),
(4, 4, '21350901', 'Avenida ministro edgard romero', 'loja 81', 81, 'rio de janeiro', 'madureira'),
(5, 5, '21331720', 'Estrada intendente magalhães', 'loja 1214', 1212, 'rio de janeiro', 'vila valqueire');

create table if not exists produto
(
	id_produto int primary key auto_increment,
	id_loja int not null,
	titulo varchar(40) not null,
	descricao text(200) not null,
	categoria varchar(15),
	valor double(10,2) not null,
	desconto double(10,2) not null,
	status boolean default false,
	dia_semana varchar(15) not null,
	quantidade_estoque int(3),
	foto_url varchar(200),
	constraint fk_id_loja_produto foreign key (id_loja) references loja (id_loja)
);



insert into produto (id_produto, id_loja, titulo, descricao, categoria, valor, desconto, status, dia_semana, quantidade_estoque, foto_url)
values
(1, 1, 'virada à paulista', 'arroz, feijão (corda ou mulatinho), bisteca suina, couve, torresmo', 'refeicao', '26.50', '0', '1', '1', 20, null),
(2, 1, 'carne cozida com batatas', 'arroz, feijão (corda ou mulatinho), farofa, macarrão, batata frita ou pure', 'refeicao', '22.50', '0', '1', '2', 20, null),
(3, 1, 'bife acebolado', 'arroz, feijão (corda ou mulatinho), macarrão, maionese, batata frita ou purê', 'refeicao', '19.30', '0', '1', '3', 20, null),
(4, 1, 'frango à passarinho', 'arroz, feijão (corda ou mulatinho), macarrão, farofa de cuscuz, batata frita ou purê', 'refeicao', '15.80', '0', '1', '4', 20, null),
(5, 1, 'estrogonofe de frango', 'arroz ou macarrão, batata frita ou purê', 'refeicao', '20.60', '0', '1', '5', 20, null),
(6, 1, 'parmegiana de frango', 'arroz ou macarrão, batata frita ou purê', 'refeicao', '21.20', '0', '1', '6', 20, null),
(7, 1, 'vaca atolada', 'macaxeira, carne cozida, salada', 'refeicao', '23.00', '0', '1', '7', 20, null),
(8, 2, 'bife à rolê',  'arroz, feijçao (corda ou mulatinho), macarrão, maionese', 'refeicao', '21.20', '0', '1', '1', 20, null),
(9, 2, 'bisteca suina acebolada', 'arroz, feijão (corda ou mulatinho), farofa, batata frita ou purê.', 'refeicao', '25.00', '0', '1', '2', 20, null),
(10, 2, 'lasanha', 'arroz, batata frita', 'refeicao', '20.15', '0', '1', '3', 20, null),
(11, 2, 'estrogonofe de carne', 'arroz ou macarrão, batata frita ou purê', 'refeicao', '20.15', '0', '1', '4', 20, null),
(12, 2, 'panqueca (carne ou frango)', 'arroz ou macarrão, batata frita ou purê', 'refeicao', '17.00', '0', '1' '5', 20, null),
(13, 2, 'filé de peixe ao molho branco', 'arroz, marcarrrão (molho branco ou tradicional), feijão (corda ou mulatinho), farofa de cuscuz, batata frita ou purê', 'refeicao', '24.40', '0', '1', '6', 20, null),
(14, 2, 'filé de peixe à milanesa', 'arroz, feijão (corda ou mulatinho), macarrão, maionese, batata frita ou purê', 'refeicao', '27.00', '0', '1', '7', 20, null),
(15, 3, 'parmegiana de peixe', 'arroz ou macarrão (molho branco ou tradicional), batata frita ou purê', 'refeicao', '27.00', '0', '1', '1', 20, null),
(16, 3, 'feijoada', 'arroz, farofa, couve., batata frita ou purê', 'refeicao', '25.00', '0', '1', '2', 20, null),
(17, 3, 'mocotó', 'arroz, cuscuz, feijão.', 'refeicao', '23.00', '0', '1', '3', 20, null);



create table if not exists venda
 (
 	id_venda int primary key auto_increment,
 	id_produto int not null, 
 	id_pessoa int not null, 
 	data_venda datetime default current_timestamp not null,
 	data_entrega datetime not null,
 	quantidade_produto int (3) default 1 not null,
 	total_compra double(10,2) not null,
 	constraint fk_id_cliente foreign key (id_pessoa) references pessoa (id_pessoa),
 	constraint fk_id_produto_venda foreign key (id_produto) references produto (id_produto)
 );
insert into venda
values
(1, 2, 1, '2017-02-25', '2017-02-25 13:00', 1, '22.50'),
(2, 15, 1, '2017-02-26', '2017-02-26 13:00', 1, '27.00'),
(3, 10, 1, '2017-02-27', '2017-02-27 13:00', 1, '22.10'),
(4, 9, 2, '2017-03-04', '2017-03-04 12:00', 1, '25.00'),
(5, 5, 2, '2017-03-05', '2017-03-05 12:00', 1, '20.60'),
(6, 17, 2, '2017-03-06', '2017-03-06 12:00', 1, '23.60'),
(7, 14, 2, '2017-03-09', '2017-03-09 12:30', 1, '27.60'),
(8, 1, 1, '2017-04-01', '2017-04-01 13:40', 1, '26.50'),
(9, 7, 1, '2017-04-02', '2017-04-02 14:00', 1, '23.00'),
(10, 18, 2, '2017-04-07', '2017-04-07 11:50', 1, '28.00');

create table if not exists forma_pagamento
(
	id_forma_pagamento int primary key auto_increment,
	tipo_forma_pagamento varchar(15)
);
insert into forma_pagamento
values
(1, 'dinheiro'),
(2, 'crédito'),
(3, 'débito'),
(4, 'pagar depois');

	create table if not exists pagamento
(
	id_pagamento int primary key auto_increment,
	id_venda int not null,
	id_forma_pagamento int not null,
	total_pagamento double(10,2) not null,
	data_pagamento datetime,
	status_pagamento varchar(10),
    constraint fk_id_venda_pagamento foreign key (id_venda) references venda (id_venda),
    constraint fk_id_forma_pag foreign key (id_forma_pagamento) references forma_pagamento (id_forma_pagamento)
);
insert into pagamento
values
(1,1,4,'22.50', '2017-03-01', 'pago'),
(2,2,1,'27.00', '2017-02-26', 'pago'),
(3,3,3,'22.10', '2017-02-27', 'pago'),
(4,4,2,'25.00', '2017-03-04', 'pago'),
(5,5,4,'20.60', null, 'pendente'),
(6,6,1,'23.60', '2017-03-06', 'pago'),
(7,7,3,'27.60', '2017-03-09', 'pago'),
(8,8,2,'26.50', '2017-04-01', 'pago'),
(9,9,2,'23.00', '2017-04-02', 'pago'),
(10,10,2, '28.00', '2017-04-07', 'pago');

