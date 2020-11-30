/*
SELECIONAR NOME E DATA DE NASCIMENTO DA CRIANÇA JUNTAMENTE DO NOME DA ASSISTENTE SOCIAL,
DO JUIZ QUE CONDUZIU O PROCESSO DE ADOÇÃO E O NOME DO ABRIGO PARA A ADOTANTE QUE
POSSUI O TELEFONE 372816493.
*/

SELECT c.nome   nome_crianca,
       c.data_nascimento,
       ab.nome  nome_abrigo,
       ass.nome assitente_social,
       jz.nome  juiz
FROM BJ204236.processo_adocao pa
         inner join BJ204236.crianca c
                    on pa.id_crianca = c.id_crianca
         inner join BJ204236.abrigo ab
                    on c.id_abrigo = ab.id_abrigo
         inner join BJ204236.historico_crianca hc
                    on c.id_crianca = hc.id_crianca
         inner join BJ204236.assistente_social ass
                    on hc.cress = ass.cress
         inner join BJ204236.adotante ad
                    on pa.cpf = ad.cpf
         inner join BJ204236.movimentacao_processo mp
                    on pa.num_processo = mp.num_processo
         inner join BJ204236.juiz jz
                    on mp.id_juiz = jz.id_juiz
         inner join BJ204236.telefone_adotante ta
                    on pa.cpf = ta.cpf
where ta.numero = 372816493;

