--Liste o nome e o endereço completo de todos os abrigos que abrigam mais de 2 crianças

select abr.nome,
       abr.EDR_RUA,
       abr.EDR_NUMERO,
       abr.EDR_CIDADE,
       abr.EDR_UF

from BJ204236.ABRIGO abr

where abr.ID_ABRIGO in (
    select cri.ID_ABRIGO

    from BJ204236.CRIANCA cri

    group by cri.ID_ABRIGO

    having count(cri.ID_ABRIGO) > 2
)
;