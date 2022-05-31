import os
import pandas as pd
from scipy.stats import chi2_contingency
from sklearn import tree
from sklearn import svm
from matplotlib import pyplot as plt
rep = "C:/Users/nicolas.bourgeois/Desktop/Enseignement/PFML-Libs_Python_ML/oldies PFML et FTML/"

##1
fields = ['adm','dip','mil','goods','country']
countries = ['France','England','Mali','Aztec','Uzbek']
os.chdir(rep)
df = pd.read_csv("C1/data2.csv",sep=";")[fields]
df = df[df.country.isin(countries)]
goods = list(df.goods.unique())
df.goods = df.goods.apply(lambda x:goods.index(x))
df = df.drop("country",axis=1).astype("int")

##2
tx = []
la = sorted(list(df.adm.unique()))
for f in fields[1:-1]:
    filler = sorted(list(df[f].unique()))
    tx.append(pd.DataFrame({a:filler for a in la},index=filler))
    for a in la:
        for b in filler :
            tx[-1][a][b] = df[(df.adm == a) & (df[f] == b)].adm.count()
    print(tx[-1])
    print("p-value: "+str(chi2_contingency(tx[-1])[1]))

##3
clf = tree.DecisionTreeClassifier()
clf = clf.fit(df.drop("mil",axis=1), df.mil)
plt.figure(figsize=(20,20))
tree.plot_tree(clf,max_depth=3)
#plt.show()

##4
svc = svm.SVC(kernel='linear')
svc.fit(df[['adm','goods']],df.mil)
print(svc.coef_)