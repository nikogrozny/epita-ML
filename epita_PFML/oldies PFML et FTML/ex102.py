import pandas as pd
from numpy.random import randint
df1 = pd.read_csv('./C1/data1.csv')
## question 1
class1 = df1[df1.pclass == 1]
print(class1.tail())
## question 2
patriarcat = df1[(df1.sex == 'male') & 
    (df1.age > 29) & (df1.age < 51)]
print(patriarcat.head())
## question 3
par_classe = df1.groupby('pclass')
print(par_classe['pclass'].count())
print(par_classe['age','survived'].mean())