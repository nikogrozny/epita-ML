import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from random import gauss

titanic = pd.read_csv('./titanic.csv')
titanic['pclass'] = titanic['pclass'].apply(lambda x:x+gauss(0,0.05))
colMap={0:"red",1:"g"}
clrs=list(map(lambda x:colMap.get(x),titanic.survived))
titanic.plot(x='age',y='pclass',kind='scatter',alpha=0.4,color=clrs)
plt.show()