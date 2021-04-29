use siorf;

Select ref_PlanoInterno, Sum(Suplementação) as Suplementação, Sum(Cancelamento)as Cancelamento
FROM(
		SELECT ref_PlanoInterno,
			case when  ref_EspecieRemanejamento = 'Suplementação' THEN ref_Valor else 0 end as Suplementação,
			case when ref_EspecieRemanejamento = 'Cancelamento' THEN ref_Valor Else 0 end as Cancelamento
		FROM tbl_FCDFRemanejamentos) as r
group by ref_PlanoInterno;
