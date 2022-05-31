from sklearn import svm
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
titanic = pd.read_csv("data2.csv").loc[:,['age','fare',
    'survived']].dropna()
X,Y=titanic[['age','fare']],list(titanic.survived)
svc=svm.SVC(probability=True)
svc.fit(X,Y)
pr=[(x[0],Y[i]) for i,x in enumerate(list(svc.predict_proba(X)))]
pr.sort(key=lambda x:x[0],reverse=True)
print(pr)
TP,FP=[0],[0]
abc = np.linspace(0,len(Y),len(Y)+1)
for i in range(len(Y)):
    TP.append(TP[-1]+(1 if pr[i][1]==0 and pr[i][0]>0.5 else 0))
    FP.append(FP[-1]+(1 if pr[i][1]==1 and pr[i][0]>0.5 else 0))
plt.plot(FP,TP,color='red')
plt.show()