import pandas as pd
import numpy as np

provinces = pd.read_csv("data2.csv",sep=";",
    na_values='nan',skipinitialspace=True)
to_sum=provinces.loc[provinces.country.isin(['Muscovy',
  'Ryazan','Novgorod']) & (provinces.goods != 'Grain')]
total = to_sum.dev.sum()
print(total)