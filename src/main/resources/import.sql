insert into cozinha (id, nome) values (1, 'Brasileira')
insert into cozinha (id, nome) values (2, 'Japonesa')

insert into estado (id, nome) values (1, 'Sao Paulo')
insert into estado (id, nome) values (2, 'Parana')
insert into estado (id, nome) values (3, 'Minas Gerais')

insert into cidade (nome, estado_id) values ('Sao Jose dos Campos', 1);
insert into cidade (nome, estado_id) values ('Guarulhos', 1);
insert into cidade (nome, estado_id) values ('Itaipulandia', 2);
insert into cidade (nome, estado_id) values ('Medianeira', 2);
insert into cidade (nome, estado_id) values ('Foz do Iguacu', 2);
insert into cidade (nome, estado_id) values ('Baependi', 3);
insert into cidade (nome, estado_id) values ('Brasopolis', 3);

insert into restaurante (nome, taxa_frete, cozinha_id, data_cadastro, data_atualizacao, endereco_cidade_id, endereco_cep, endereco_logradouro, endereco_numero, endereco_bairro) values ('Brasil food', 10, 1, utc_timestamp, utc_timestamp, 1, '38400-999', 'Rua João Pinheiro', '1000', 'Centro');
insert into restaurante (nome, taxa_frete, cozinha_id, data_cadastro, data_atualizacao) values ('Akami', 9.50, 2, utc_timestamp, utc_timestamp);
insert into restaurante (nome, taxa_frete, cozinha_id, data_cadastro, data_atualizacao) values ('Hioki', 15, 2, utc_timestamp, utc_timestamp);

insert into permissao (nome, descricao) values ('administrador', 'autorizado a fazer alteracoes');
insert into permissao (nome, descricao) values ('usuario', 'apenas consultas');

insert into forma_pagamento (descricao) values ('Debito')
insert into forma_pagamento (descricao) values ('Credito')
insert into forma_pagamento (descricao) values ('Dinheiro')
insert into forma_pagamento (descricao) values ('PIX')

insert into restaurante_forma_pagamento (restaurante_id, forma_pagamento_id) values (1, 1), (1, 2), (1, 3), (2, 3), (3, 2), (3, 3);

insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Porco com molho agridoce', 'Deliciosa carne suína ao molho especial', 78.90, 1, 1);
insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Camarão tailandês', '16 camarões grandes ao molho picante', 110, 1, 1);

insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Salada picante com carne grelhada', 'Salada de folhas com cortes finos de carne bovina grelhada e nosso molho especial de pimenta vermelha', 87.20, 1, 2);

insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Garlic Naan', 'Pão tradicional indiano com cobertura de alho', 21, 1, 3);
insert into produto (nome, descricao, preco, ativo, restaurante_id) values ('Murg Curry', 'Cubos de frango preparados com molho curry e especiarias', 43, 1, 3);
