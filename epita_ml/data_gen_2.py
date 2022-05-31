from random import shuffle
cheveux = ["BLONDS","ROUX","NOIRS","CHATAINS","BLANCS","ARGENTES"]
yeux = ["BLEUS","VERTS","BRUNS","NOIRS","DORES","VERTS-BRUNS"]
hobbies = ["TUNING","PECHE","POESIE","CUISINE","JEUX VIDEOS","JARDINAGE","DRONES"]
age = [str(i) for i in range(18,70,6)]
taille = ["1m"+str(i) for i in range(55,95,5)]
poids = [str(i) for i in range(50,100,5)]
etudes = ["BAC+"+str(i) for i in range(8)]+["BEP","CAP"]
politique = ["LO","POI","NPA","FG","FI","PS","EELV","EM","MODEM","UDI","LR","FN"]
matrix = [c+";"+y+";"+a+";"+t+";"+w+";"+e+";"+p+";"+h+"\n" for c in cheveux for y in yeux for a in age for t in taille for w in poids for e in etudes for p in politique for h in hobbies]
shuffle(matrix)
f = open("data2.csv","w")
for x in matrix[:10]:
    f.write(x)
f.close()