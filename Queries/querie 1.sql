--Liste o nome das partes participantes dos processos de adoção, cuja data de termino do processo é igual ou maior que 2016, juntamente do historico de cada uma das partes.
select ado.NOME,
       cri.NOME,
       hc.DESCRICAO as Historico_da_Criança,
       ha.DESCRICAO as Historico_do_Adotante

from BJ204236.PROCESSO_ADOCAO pro
         inner join BJ204236.ADOTANTE ado on pro.CPF = ado.CPF
        inner join BJ204236.CRIANCA cri on cri.ID_CRIANCA = pro.ID_CRIANCA
        inner join BJ204236.HISTORICO_CRIANCA hc on hc.ID_CRIANCA = cri.ID_CRIANCA
        inner join BJ204236.HISTORICO_ADOTANTE ha on ha.CPF = ado.CPF

where (EXTRACT(YEAR FROM pro.DATA_FIM) >= 2016);