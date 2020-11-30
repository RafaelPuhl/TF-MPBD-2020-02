--Delete todos os registros de crianças que não estão vinculadas a algum processo de adoção

delete from bj204236.crianca
where id_crianca not in (SELECT id_crianca from bj204236.PROCESSO_ADOCAO);