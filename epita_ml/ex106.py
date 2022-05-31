from MySQLdb import *                                                  
import pandas as pd
host,user,pwd='localhost','root','root'
dbname = 'MissiDominici'        
db = connect(host, user, pwd, dbname)
curseur = db.cursor()
curseur.execute("SHOW TABLES")
tablenames = [t[0] for t in curseur.fetchall()]    
tables = dict()
for t in tablenames:
    sqlr = 'SELECT * FROM '+t
    tables[t] = pd.read_sql(sqlr,con=db)
db.close()
persos = tables['actor'][['id','name','date_start']]
persos = persos.dropna()
print(persos)