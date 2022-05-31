from sklearn import linear_model, datasets
import matplotlib.pyplot as plt
import numpy as np
dbt = datasets.load_diabetes()
X_train,X_test=dbt.data[:-20],dbt.data[-20:]
Y_train,Y_test=dbt.target[:-20],dbt.target[-20:]
regr = linear_model.LinearRegression()
regr.fit(X_train, Y_train)
print(regr.coef_)
print(np.mean((regr.predict(X_test)-Y_test)**2))
print(regr.score(X_test, Y_test))
plt.scatter(dbt.data[:,0],dbt.target)
plt.scatter(dbt.data[:,3],dbt.target)
plt.show()