from MySQLdb import *                                                  
import pandas as pd
host,user,pwd='localhost','root','root'
dbname = 'MissiDominici'        
try:
    db = connect(host, user, pwd, dbname)
    curseur = db.cursor()
    curseur.execute("SHOW TABLES")
    tablenames = [t[0] for t in curseur.fetchall()]    
except Error as e:
    print ("Error %d: %s" % (e.args[0], e.args[1]))
tables = dict()
for t in tablenames:
    sqlr = 'SELECT * FROM '+t
    tables[t] = pd.read_sql(sqlr,con=db)
db.close()
print(tables[tablenames[-1]])