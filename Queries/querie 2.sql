--Liste o nome e o endereço completo de todos os abrigos que abrigam mais de 2 crianças juntamente do nome das crianças e o nome do assistente social que as avaliaram

select abr.nome,
       abr.EDR_RUA,
       abr.EDR_NUMERO,
       abr.EDR_CIDADE,
       abr.EDR_UF,
       cri.nome,
       ass.NOME

from BJ204236.ABRIGO abr
         inner join CRIANCA cri on abr.ID_ABRIGO = cri.ID_ABRIGO
         inner join HISTORICO_CRIANCA HC on cri.ID_CRIANCA = HC.ID_CRIANCA
         inner join ASSISTENTE_SOCIAL ass on ass.CRESS = HC.CRESS

where abr.ID_ABRIGO in (
    select cri.ID_ABRIGO

    from BJ204236.CRIANCA cri

    group by cri.ID_ABRIGO

    having count(cri.ID_ABRIGO) > 2
)
;