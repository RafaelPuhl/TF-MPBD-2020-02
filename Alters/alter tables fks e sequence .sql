alter table processo_adocao
    add constraint fk_id_forum
        foreign key (id_forum)
            references forum (id_forum);

alter table processo_adocao
    add constraint fk_id_crianca
        foreign key (id_crianca)
            references crianca (id_crianca);

alter table processo_adocao
    add constraint fk_cpf_adotante
        foreign key (cpf)
            references adotante (cpf);

alter table telefone_adotante
    add constraint fk_cpf_telefone
        foreign key (cpf)
            references adotante (cpf);

alter table movimentacao_processo
    add constraint fk_num_processo
        foreign key (num_processo)
            references processo_adocao (num_processo);

alter table movimentacao_processo
    add constraint fk_id_juiz
        foreign key (id_juiz)
            references juiz (id_juiz);

alter table historico_adotante
    add constraint fk_cpf_adotante_historico
        foreign key (cpf)
            references adotante (cpf);

alter table historico_crianca
    add constraint fk_id_crianca_historico
        foreign key (id_crianca)
            references crianca (id_crianca);

alter table historico_crianca
    add constraint fk_cress
        foreign key (cress)
            references assistente_social (cress);

alter table historico_adotante
    add constraint fk_cress_historico_adotante
        foreign key (cress)
            references assistente_social (cress);
            
alter table ADOTANTE
    add constraint fk_adotante_conjege
        foreign key (cpf_conjuge)
            references  ADOTANTE(CPF);
            
alter table CRIANCA
    add constraint fk_abrigo_crianca
        foreign key (ID_ABRIGO)
            references  ABRIGO(ID_ABRIGO)
            on delete cascade;

--/////////////////////////////////////////////////////////////////
create sequence seq_criancas;
create sequence seq_abrigo;
create sequence seq_juiz;
create sequence seq_forum;

alter table BJ204236.CRIANCA
    modify (id_crianca numeric(6) default seq_criancas.nextval);

alter table BJ204236.ABRIGO
    modify (id_abrigo numeric(4) default seq_abrigo.nextval);

alter table BJ204236.JUIZ
    modify (id_juiz numeric(6) default seq_juiz.nextval);

alter table BJ204236.FORUM
    modify (id_forum numeric(4) default seq_forum.nextval);
--/////////////////////////////////////////////////////////////////
commit;
