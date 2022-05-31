from random import shuffle,randrange
langues = ["FR","AN","GE","AR","HE","CH","JA","BR","AZ","SV","FI","PL","IT","ES"]
matrix = []
for i in range(40):
           shuffle(langues)
           languesSpe = langues[:randrange(2,10)]
           matrix.append("Personne"+str(i)+":"+",".join(languesSpe)+"\n")
f = open("dataExam.csv","w")
for x in matrix:
           f.write(x)
f.close()