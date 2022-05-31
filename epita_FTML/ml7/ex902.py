import pandas as pd
from scipy.stats import chi2_contingency
from random import randint
## exercice 1
titanic = pd.read_csv('./C1/data1.csv')
cont = [[titanic.loc[(titanic.sex==j) & (titanic.pclass==i)].shape[0] 
for i in range(1,4)] for j in ['male','female']]
print(cont, chi2_contingency(cont))
## exercice 2
data = [(randint(0,1),randint(0,1)) for i in range(100)]
cont = [[len([x for x in data if x[0]==i and x[1] ==j]) 
for i in range(2)] for j in range(2)]
print(cont, chi2_contingency(cont))