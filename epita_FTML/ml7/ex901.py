import numpy as np
from scipy.stats import ttest_1samp
from sklearn.datasets import load_iris
## exercice 1
petals = load_iris().data[:,0]
m = np.mean(petals[:30])
print(m,ttest_1samp(petals,m))
## exercice 2
a = np.random.normal(size=1000)
print(ttest_1samp(a,0))