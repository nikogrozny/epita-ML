import pandas as pd
import numpy as np
provinces = pd.read_csv("./C1/data2.csv",sep=";",
    na_values='nan',skipinitialspace=True)
to_sum=provinces.loc[provinces.country.isin(['Muscovy',
  'Ryazan','Novgorod']) & (provinces.goods != 'Grain')]
to_sum.loc[to_sum.goods == 'Fur',
    'dev'] = to_sum.loc[to_sum.goods == 'Fur',
    'dev'].apply(lambda x:max(3,x-5))
total = to_sum.dev.sum()
print(total)