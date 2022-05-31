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
persos = tables['actor'][['id','name','date_start']].dropna()
n_to_n = tables['actor_has_role_and_place'][['actor','role','place']]
roles = tables['role'][['id','name']].rename(columns={'name':'title'})
places = tables['place'][['id','name']].rename(columns={'name':'from'})
persos = pd.merge(left=persos,right=n_to_n,left_on='id',right_on='actor')
persos = pd.merge(left=persos,right=roles,left_on='role',right_on='id')
persos = pd.merge(left=persos,right=places,left_on='place',right_on='id')
print(persos[['name','date_start','title','from']])
