CREATE VIEW viw_FCDFPIO AS
SELECT tbl_CadastroDemandas.cad_CoordenadorSetorial as 'Coordenador Setorial',
	tbl_CadastroDemandas.cad_CodigoDemanda as Cod,
    tbl_CadastroDemandas.cad_Descricao as Descrição,
    tbl_CadastroDemandas.cad_FCDFDespesaDetalhada as 'Natureza da Depesa',
    tbl_FCDFPlanoInterno.pif_Valor as PIO,
    tbl_FCDFPlanoInterno.pif_Valor +
    case when  viw_FCDFRemanejamentoPIO.Suplementação is null THEN 0.00 else viw_FCDFRemanejamentoPIO.Suplementação end - case when  viw_FCDFRemanejamentoPIO.Cancelamento is null THEN 0.00 else viw_FCDFRemanejamentoPIO.Cancelamento end as 'PIO Atualizado'
FROM tbl_CadastroDemandas inner join tbl_PropostaSetorial on tbl_CadastroDemandas.Id_CadastroDemandas = tbl_PropostaSetorial.pps_CadastroDemanda
right join tbl_FCDFProposta on tbl_PropostaSetorial.Id_PropostaSetorial = tbl_FCDFProposta.prf_PropostaSetorial
right join tbl_FCDFPlanoInterno on tbl_FCDFProposta.Id_FCDFProposta = tbl_FCDFPlanoInterno.pif_Proposta
left join viw_FCDFRemanejamentoPIO on tbl_FCDFPlanoInterno.Id_FCDFPlanoInterno = viw_FCDFRemanejamentoPIO.ref_PlanoInterno
where tbl_PropostaSetorial.pps_Exercicio = 2021;