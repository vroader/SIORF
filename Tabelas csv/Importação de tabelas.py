import csv
import MySQLdb
mydb = MySQLdb.connect(host='ns1014.hostgator.com.br', user='siorfc_Admin', password='PMseis06', database= 'siorfc68_OrcamentoFCDF')

with open('tbl_Ação.csv') as tbl_Acao:
    tblAcao = csv.reader(tbl_Acao, delimiter=';')
    tblAcaoLista = []
    for row in tblAcao:
        value = (row[0],row[1])
        tblAcaoLista.append(value)

query = 'insert into tbl_Acao(aca_Codigo,aca_Descricao) values (%s,%s);'

mycursor = mydb.cursor()
mycursor.executemany(query,tblAcaoLista)
mydb.commit()