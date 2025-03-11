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