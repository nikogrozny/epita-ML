import pandas as pd
df = pd.read_csv("data2.csv")[['sex','pclass','survived']]
pX_Y,sx,cl = [],['male','female'],[1,2,3]
for i in range(2):
    pX_Y.append([[df[(df.survived==i) & (df.pclass==p)].shape[0]
        * df[(df.survived==i) & (df.sex==s)].shape[0] 
        / (df[df.survived==i].shape[0]*df.shape[0]) for p in cl]
         for s in sx])
for s in range(2):
    for p in range(3):
        print (sx[s],cl[p],"Survit" if pX_Y[1][s][p]>pX_Y[0][s][p] 
            else "Disparait", pX_Y[1][s][p],"vs",pX_Y[0][s][p])