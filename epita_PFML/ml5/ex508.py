import pandas as pd
import matplotlib.pyplot as plt
from sklearn.svm import SVC
from random import shuffle
def color(x):
    return({0:'red',1:'green'}[x])
titanic = pd.read_csv('./C2/data1.csv')[['age','fare','sex','survived']]
titanic = titanic.dropna().reset_index()
titanic.sex = titanic.sex.apply(lambda x:{'male':0,'female':1}[x])
X,Y = titanic[['age','fare','sex']], titanic.survived
i_train = list(range(len(X)))
shuffle(i_train)
X_train=X.loc[X.index.isin(i_train[:400])]
X_test=X.loc[X.index.isin(i_train[400:])]
Y_train=Y.loc[Y.index.isin(i_train[:400])]
s = SVC(kernel='linear')
s.fit(X_train,Y_train)
Y_pred = pd.Series(s.predict(X_test))
plt.subplot(121)
plt.scatter(X_test.age,X_test.fare,c=Y_pred.apply(color),alpha=0.2)
plt.scatter(X_train.age,X_train.fare,c=Y_train.apply(color))
plt.subplot(122)
plt.scatter(X.age, X.fare,c=Y.apply(color))
plt.show()