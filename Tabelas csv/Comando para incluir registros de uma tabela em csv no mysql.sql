#Comando para incluir registros de uma tabela csv no mysql

use siorfc68_CadastroDemandas;

load data local infile 'C:/Users/wellington.oliveira/Desktop/GITHUB/Tabelas/tbl_ProdutoUnidade.csv'
into table tbl_ProdutoUnidade
fields terminated by ';'
enclosed by '"'
lines terminated by '\r\n'
(ptu_Codigo, pdu_Especificacao, pdu_UnidadeMedida);

