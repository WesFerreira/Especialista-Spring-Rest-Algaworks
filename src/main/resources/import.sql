insert into cozinha (id, nome) values (1, 'Brasileira')
insert into cozinha (id, nome) values (2, 'Japonesa')

insert into restaurante (nome, taxa_frete, cozinha_id) values ('Brasil food', 10, 1);
insert into restaurante (nome, taxa_frete, cozinha_id) values ('Akami', 9.50, 2);
insert into restaurante (nome, taxa_frete, cozinha_id) values ('Hioki', 15, 2);

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

insert into permissao (nome, descricao) values ('administrador', 'autorizado a fazer alteracoes');
insert into permissao (nome, descricao) values ('usuario', 'apenas consultas');

insert into forma_pagamento (descricao) values ('Debito')
insert into forma_pagamento (descricao) values ('Credito')
insert into forma_pagamento (descricao) values ('Dinheiro')
insert into forma_pagamento (descricao) values ('PIX')

insert into restaurante_forma_pagamento (restaurante_id, forma_pagamento_id) values (1, 1), (1, 2), (1, 3), (2, 3), (3, 2), (3, 3);
