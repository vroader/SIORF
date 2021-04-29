CREATE TABLE tbl_FCDFItemDemanda (
Id_FCDFItemDemanda int(15) Primary key Auto_increment,
idf_Item int (15) not null,
idf_PlanoInterno int (11) not null);

alter table tbl_FCDFItemDemanda add constraint idf_Item_Id_Item
foreign key (idf_Item) references tbl_FCDFItem(Id_Item);

alter table tbl_FCDFItemDemanda add constraint idf_PlanoInterno_Id_FCDFPlanoInterno
foreign key (idf_PlanoInterno) references tbl_PlanoInterno(Id_FCDFPlanoIntenro);