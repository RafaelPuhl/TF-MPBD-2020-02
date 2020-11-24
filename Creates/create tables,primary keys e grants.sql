-- Create tables e Primary keys

create table adotante
(
    cpf             numeric(11)  not null,
    nome            varchar(100) not null,
    data_nascimento date         not null,
    edr_numero      numeric(6)   not null,
    edr_rua         varchar(100) not null,
    edr_cidade      varchar(100) not null,
    edr_uf          varchar(2)   not null,
    cpf_conjuge numeric(11)
);

alter table adotante
    add constraint pk_cpf_adotante
        primary key (cpf);
--////////////////////////////////////////////////////////////////
create table telefone_adotante
(
    cpf         numeric(11) not null,
    id_telefone numeric(12) not null,
    ddd         numeric(2)  not null,
    numero      numeric(9)  not null
);

alter table telefone_adotante
    add constraint pk_id_telefone
        primary key (id_telefone);
--////////////////////////////////////////////////////////////////
create table psicologo
(
    crp    numeric(6)   not null,
    crp_uf varchar(2)   not null,
    nome   varchar(100) not null
);

alter table psicologo
    add constraint pk_cdp_psicologo
        primary key (crp);
--/////////////////////////////////////////////////////////////////
create table assistente_social
(
    cress    numeric(6)   not null,
    cress_uf varchar(2)   not null,
    nome     varchar(100) not null
);

alter table assistente_social
    add constraint pk_cress_assistente_social
        primary key (cress);
--/////////////////////////////////////////////////////////////////
create table juiz
(
    id_juiz numeric(6)   not null,
    nome    varchar(100) not null
);

alter table juiz
    add constraint pk_id_juiz
        primary key (id_juiz);
--/////////////////////////////////////////////////////////////////
create table crianca
(
    id_crianca      numeric(6)   not null,
    nome            varchar(100) not null,
    data_nascimento date         not null,
    sexo            char(1)      not null
);

alter table crianca
    add constraint pk_id_crianca
        primary key (id_crianca);
--/////////////////////////////////////////////////////////////////
create table forum
(
    id_forum   numeric(4)   not null,
    edr_numero numeric(6)   not null,
    edr_rua    varchar(100) not null,
    edr_cidade varchar(100) not null,
    edr_uf     varchar(2)   not null
);

alter table forum
    add constraint pk_id_forum
        primary key (id_forum);
--/////////////////////////////////////////////////////////////////
create table abrigo
(
    id_abrigo  numeric(4)   not null,
    nome       varchar(100) not null,
    edr_numero numeric(6)   not null,
    edr_rua    varchar(100) not null,
    edr_cidade varchar(100) not null,
    edr_uf     varchar(2)   not null
);

alter table abrigo
    add constraint pk_id_abrigo
        primary key (id_abrigo);
--/////////////////////////////////////////////////////////////////
create table historico_crianca
(
    id_historico numeric(3)    not null,
    descricao    varchar(4000) not null,
    id_crianca   numeric(6)    not null,
    cress        numeric(6)    not null,
    cress_uf     varchar(2)    not null
);

alter table historico_crianca
    add constraint pk_id_historico_crianca
        primary key (id_historico);
--/////////////////////////////////////////////////////////////////
create table historico_adotante
(
    id_historico numeric(3)    not null,
    descricao    varchar(4000) not null,
    cpf          numeric(11)    not null,
    cress        numeric(6)    not null,
    cress_uf     varchar(2)    not null
);

alter table historico_adotante
    add constraint pk_id_historico_adotante
        primary key (id_historico);
--/////////////////////////////////////////////////////////////////
create table movimentacao_processo
(
    id_movimentacao numeric(4)    not null,
    texto_despacho  varchar(4000) not null,
    num_processo    numeric(20)   not null,
    id_juiz         numeric(6)    not null
);

alter table movimentacao_processo
    add constraint pk_id_movimentacao
        primary key (id_movimentacao);
--/////////////////////////////////////////////////////////////////
create table processo_adocao
(
    num_processo numeric(20) not null,
    id_forum     numeric(4)  not null,
    tipo         varchar(50) not null,
    data_inicio  date        not null,
    data_fim     date,
    id_crianca   numeric(6)  not null,
    cpf          numeric(11) not null
);

alter table processo_adocao
    add constraint pk_num_processo
        primary key (num_processo);
        
--//////////////////////Liberação de privilegios para os colegas //////////////////////////////////////

grant all privileges on abrigo to BJ103859;
grant all privileges on adotante to BJ103859;
grant all privileges on assistente_social to BJ103859;
grant all privileges on crianca to BJ103859;
grant all privileges on forum to BJ103859;
grant all privileges on historico_adotante to BJ103859;
grant all privileges on historico_crianca to BJ103859;
grant all privileges on juiz to BJ103859;
grant all privileges on movimentacao_processo to BJ103859;
grant all privileges on processo_adocao to BJ103859;
grant all privileges on psicologo to BJ103859;
grant all privileges on telefone_adotante to BJ103859;

grant all privileges on abrigo to AF105742;
grant all privileges on adotante to AF105742;
grant all privileges on assistente_social to AF105742;
grant all privileges on crianca to AF105742;
grant all privileges on forum to AF105742;
grant all privileges on historico_adotante to AF105742;
grant all privileges on historico_crianca to AF105742;
grant all privileges on juiz to AF105742;
grant all privileges on movimentacao_processo to AF105742;
grant all privileges on processo_adocao to AF105742;
grant all privileges on psicologo to AF105742;
grant all privileges on telefone_adotante to AF105742;

grant all privileges on abrigo to BJ105717;
grant all privileges on adotante to BJ105717;
grant all privileges on assistente_social to BJ105717;
grant all privileges on crianca to BJ105717;
grant all privileges on forum to BJ105717;
grant all privileges on historico_adotante to BJ105717;
grant all privileges on historico_crianca to BJ105717;
grant all privileges on juiz to BJ105717;
grant all privileges on movimentacao_processo to BJ105717;
grant all privileges on processo_adocao to BJ105717;
grant all privileges on psicologo to BJ105717;
grant all privileges on telefone_adotante to BJ105717;
--/////////////////////////////////////////////////////////////////
commit;