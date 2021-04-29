CREATE VIEW viw_GDFPIO AS
SELECT tbl_CadastroDemandas.cad_CoordenadorSetorial as 'Coordenador Setorial',
	tbl_CadastroDemandas.cad_CodigoDemanda as Cod,
    tbl_CadastroDemandas.cad_Descricao as Descrição,
    tbl_CadastroDemandas.cad_GDFDespesaDetalhada as 'Natureza da Depesa',
    tbl_GDFProposta.prg_Fonte as Fonte,
    tbl_GDFProposta.pgr_IdentificadorUso as IDUso,
    tbl_GDFPlanoInterno.pig_Valor as PIO,
    tbl_GDFPlanoInterno.pig_Valor +
    case when  viw_GDFRemanejamentoPIO.Suplementação is null THEN 0.00 else viw_GDFRemanejamentoPIO.Suplementação end - case when  viw_GDFRemanejamentoPIO.Cancelamento is null THEN 0.00 else viw_GDFRemanejamentoPIO.Cancelamento end as 'PIO Atualizado'
FROM tbl_CadastroDemandas inner join tbl_PropostaSetorial on tbl_CadastroDemandas.Id_CadastroDemandas = tbl_PropostaSetorial.pps_CadastroDemanda
right join tbl_GDFProposta on tbl_PropostaSetorial.Id_PropostaSetorial = tbl_GDFProposta.prg_PropostaSetorial
right join tbl_GDFPlanoInterno on tbl_GDFProposta.Id_GDFProposta = tbl_GDFPlanoInterno.pig_Proposta
left join viw_GDFRemanejamentoPIO on tbl_GDFPlanoInterno.Id_GDFPlanoInterno = viw_GDFRemanejamentoPIO.reg_PlanoInterno
where tbl_PropostaSetorial.pps_Exercicio = 2021;