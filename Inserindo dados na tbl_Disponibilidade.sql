use siorfc68_CadastroDemandas;

alter table tbl_Disponibilidade change dsp_status dsp_Status varchar(45);

alter table tbl_Disponibilidade drop foreign key esd_Disponibilidade_id_Disponibilidade;

insert into tbl_Disponibilidade (dsp_Status)
values ('Indisponível'),
('Disponível');

select * from tbl_Disponibilidade;
