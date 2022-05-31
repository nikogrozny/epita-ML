import numpy as np
import pandas as pd
from sklearn.linear_model import LogisticRegression
titanic = pd.read_csv('./C2/data1.csv')[['age','fare','sex','survived']]
titanic = titanic.dropna().reset_index()
titanic.sex = titanic.sex.apply(lambda x:{'male':0,'female':1}[x])
X,Y = titanic[['fare','age','sex']], titanic.survived
i_train = list(range(len(X)))
shuffle(i_train)
X_train=X.loc[X.index.isin(i_train[:400])]
X_test=X.loc[X.index.isin(i_train[400:])]
Y_train=Y.loc[Y.index.isin(i_train[:400])]
Y_test=Y.loc[Y.index.isin(i_train[400:])]
logr = LogisticRegression()
logr.fit(X_train,Y_train)
print(logr.score(X_train,Y_train),logr.score(X_test,Y_test))
print(logr.predict(X_test)[:30])
print(np.array(Y_test[:30]))