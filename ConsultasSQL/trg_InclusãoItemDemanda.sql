CREATE DEFINER = CURRENT_USER TRIGGER `siorf`.`tbl_FCDFItem_BEFORE_INSERT` BEFORE INSERT ON `tbl_FCDFItem` FOR EACH ROW
BEGIN
 if itf_Operacao = 'inclusão' then
 insert into tbl_ItemDemanda ( idf_Item, idf_PlanoInterno)
 values ( New.Id_FCDFItem ,
 if new.itf_Empenho = like '170485'% and new.itf_FCDFDespesaDetalhada = '33901514' then'28'
[elseif itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada = '33901516' then '30';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='33901901' then '31';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='33905901' then '32';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='33909318' then '33';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='33909319' then '34';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='33909320' then '35';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='33900802' then '26';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='33900806' then '27';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='33900810' then '25';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='33904602' then '24';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31901201' then '1';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31901204' then '2';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31901206' then '3';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31901208' then '4';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31901209' then '5';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31901211' then '7';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31901243' then '9';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31901245' then '10';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31901287' then '11';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31909114' then '12';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31909415' then '13';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31901210' then '6';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31901242' then '8';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31900109' then '14';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31900115' then '15';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31900117' then '16';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31900121' then '17';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31900122' then '18';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31900123' then '19';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31900126' then '20';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31909115' then '21';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31900302' then '22';
else if itf_Empenho = '170485'% and itf_FCDFDespesaDetalhada ='31900304' then '23';
else -7;
end if;)
end if;
END
