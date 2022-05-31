import pandas as pd
from matplotlib import pyplot as plt
df1 = pd.read_csv('./C2/data1.csv')
plt.scatter(df1.age,df1.fare)
plt.ylabel("tarif")
plt.xlabel("age") 
plt.show()