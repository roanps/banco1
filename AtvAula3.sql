/*Com base no exemplo executado em laboratório para o Banco de Dados UNOESC BANK,
com relacionametos de cardinalidade 1:N monte um scrip BD para o seguinte problema>

Uma empresa veterinária deseja criar um simples banco para armazenar os registro dos 
TIPOS_ANIMAIS que atende, podendo ser CANINOS, FELINOS, SUINOS, CAPRINOS, EQUINOS, ETC
onde cada TIPO_ANIMAL poderá ter vários ANIMAIS, para cada animal. você dever armazenar
(ID, NOME, ID_TIPO_ANIMAL, DT_NASCIMENTO, COR, PESO, ALTURA).

Além disso, o BD deve armazenar um histórico de vacinação, onde ANIMAL pode ter N vacinas. 
Para a tabela vacina armazene (ID, NOME, DATA_APLICACAO, ID_ANIMAL [FK])*/
create database veterinaria;
use veterinaria;

create table tipos_animais(
	id int not null auto_increment primary key,
    tipo varchar(255)
);

create table animais(
	id int not null auto_increment primary key,
    nome varchar(255),
    id_tipo_animal int not null,
    dt_nascimento date not null,
    cor varchar(100) not null,
    peso float not null,
    altura float not null,
    constraint fk_id_tipo_animais_animais
		foreign key(id_tipo_animal)
        references tipos_animais(id)
);

create table vacinacao(
	id  int not null auto_increment primary key,
    nome varchar(100),
    data_aplicacao date,
    id_animal int not null,
    constraint fk_id_animais_vacinacao
		foreign key(id_animal)
        references animais(id)
);

insert into tipos_animais(tipo)
values('cachorro'),('gato');

select * from tipos_animais;
/*ler capitulo 2 do livro*/