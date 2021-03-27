use siorf;
CREATE
DEFINER=CURRENT_USER SQL SECURITY INVOKER
VIEW viw_FCDFPIO AS
select tbl_CadastroDemandas.cad_CoordenadorSetorial as CSO, tbl_CadastroDemandas.cad_CodigoDemanda as 'Cod.' , tbl_CadastroDemandas.cad_Descricao as 'Descrição', tbl_CadastroDemandas.cad_FCDFDespesaDetalhada as 'D. Detalhada', tbl_FCDFProposta.prf_Fonte as 'Fonte', tbl_FCDFPlanoInterno.pif_Quantidade as 'Meta Física', tbl_FCDFPlanoInterno.pif_Valor 'Valor'
from tbl_FCDFPlanoInterno left outer join tbl_FCDFProposta on (tbl_FCDFPlanoInterno.pif_Proposta = tbl_FCDFProposta.Id_FCDFProposta) 
left outer join tbl_PropostaSetorial on (tbl_FCDFProposta.prf_PropostaSetorial = tbl_PropostaSetorial.Id_PropostaSetorial)
left outer join tbl_CadastroDemandas on (tbl_PropostaSetorial.pps_CadastroDemanda = tbl_CadastroDemandas.Id_CadastroDemandas);

use siorf;
CREATE
DEFINER=CURRENT_USER SQL SECURITY INVOKER
VIEW viw_FCDFPIO AS
select tbl_CadastroDemandas.cad_CoordenadorSetorial as CSO, tbl_CadastroDemandas.cad_CodigoDemanda as 'Cod.' , tbl_CadastroDemandas.cad_Descricao as 'Descrição', tbl_CadastroDemandas.cad_FCDFDespesaDetalhada as 'D. Detalhada', tbl_FCDFProposta.prf_Fonte as 'Fonte', tbl_FCDFPlanoInterno.pif_Quantidade as 'Meta Física', tbl_FCDFPlanoInterno.pif_Valor 'Valor'
from tbl_FCDFPlanoInterno left outer join tbl_FCDFProposta on (tbl_FCDFPlanoInterno.pif_Proposta = tbl_FCDFProposta.Id_FCDFProposta) 
left outer join tbl_PropostaSetorial on (tbl_FCDFProposta.prf_PropostaSetorial = tbl_PropostaSetorial.Id_PropostaSetorial)
left outer join tbl_CadastroDemandas on (tbl_PropostaSetorial.pps_CadastroDemanda = tbl_CadastroDemandas.Id_CadastroDemandas);