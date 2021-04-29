create view viw_GDFRemanejamentoPIO AS
Select reg_PlanoInterno, Sum(Suplementação) as Suplementação, Sum(Cancelamento)as Cancelamento
FROM(
		SELECT reg_PlanoInterno,
			case when  reg_EspecieRemanejamento = 'Suplementação' THEN reg_Valor else 0 end as Suplementação,
			case when reg_EspecieRemanejamento = 'Cancelamento' THEN reg_Valor Else 0 end as Cancelamento
		FROM tbl_GDFRemanejamentos) as r
group by reg_PlanoInterno;
