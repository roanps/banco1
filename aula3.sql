		create database unoesc_bank;
use unoesc_bank;
create table cliente(
 id int not null auto_increment primary key,
 nome varchar(255)
);

create table conta(
	id int not null auto_increment primary key,
    nro_conta varchar(10) not null,
    id_cliente int not null,
    constraint fk_id_cliente_conta
		foreign key(id_cliente)
        references cliente(id)
);

create table transacao(
	id int not null auto_increment primary key,
    id_conta int not null,
    tipo_transacao int not null,
    data_hora datetime not null,
    valor float not null
);

-- definindo uma fk posteriomente a criação da tabela
alter table transacao
add foreign key (id_conta)
references conta(id);

-- criando indices
create index idx_transacao_tp_transacao
on transacao (tipo_transacao);

create index idx_transacao_data_hora
on transacao (data_hora);
