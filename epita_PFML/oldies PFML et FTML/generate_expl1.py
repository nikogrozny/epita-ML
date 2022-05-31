import pandas as pd
from matplotlib import pyplot as pt

def annotate_df(row):  
    ax.annotate(row['Nom'],
                (row['Taille'],row['Note']),
                xytext=(10,-5), 
                textcoords='offset points',
                )


s1 = pd.Series(['John','Emilie','Mustafa','Yulide'])
s2 = pd.Series([5,7,10,14])
s3 = pd.Series([108,120,141,167])
s4 = pd.Series([2,5,13,19])
df = pd.DataFrame({'Nom':s1,'Age':s2,'Taille':s3,'Note':s4})
df.index = df['Nom']
print(df)
ax = df.plot(x='Taille',y='Note',kind='scatter')
df.apply(annotate_df, axis=1)

pt.show()