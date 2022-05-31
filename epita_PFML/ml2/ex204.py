import pandas as pd
from matplotlib import pyplot as plt
from matplotlib import patches
df1 = pd.read_csv('./C2/data1.csv')
def colors(d):
    return {1:'green',0:'yellow'}[d]
plt.scatter(df1.age,df1.fare,
    c=df1.survived.apply(colors))
plt.ylabel("tarif")
plt.xlabel("age")
colornames = [patches.Patch(color='green',
    label='survived'),
    patches.Patch(color='yellow', label='no')] 
plt.legend(handles=colornames)
plt.show()