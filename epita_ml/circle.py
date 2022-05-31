import json
import gzip
import pandas as pd
import numpy as np
import os
import matplotlib.pyplot as plt
import matplotlib.cm as cm
from matplotlib.patches import Circle
from sklearn.decomposition import PCA
import numpy as np
from scipy import cluster
from scipy.cluster.hierarchy import linkage, dendrogram
from scipy.spatial.distance import pdist
from scipy.stats import chi2_contingency, pearsonr
from itertools import combinations

def circleOfCorrelations(pc_infos, ebouli):
	plt.Circle((0,0),radius=10, color='g', fill=False)
	circle1=plt.Circle((0,0),radius=1, color='g', fill=False)
	fig = plt.gcf()
	fig.gca().add_artist(circle1)
	for idx in range(len(pc_infos["PC-0"])):
		x = pc_infos["PC-0"][idx]
		y = pc_infos["PC-1"][idx]
		plt.plot([0.0,x],[0.0,y],'k-')
		plt.plot(x, y, 'rx')
		plt.annotate(pc_infos.index[idx], xy=(x,y))
	plt.xlabel("PC-0 (%s%%)" % str(ebouli[0])[:4].lstrip("0."))
	plt.ylabel("PC-1 (%s%%)" % str(ebouli[1])[:4].lstrip("0."))
	plt.xlim((-1,1))
	plt.ylim((-1,1))
	plt.title("Circle of Correlations")


def myPCA(df, clusters=None):
	# Normalize data
	df_norm = (df - df.mean()) / df.std()
	# PCA
	pca = PCA(n_components=6)
	pca_res = pca.fit_transform(df_norm.values)
	# Ebouli
	fig1 = plt.figure()
	ebouli = pd.Series(pca.explained_variance_ratio_)
	ebouli.plot(kind='bar', title="Ebouli des valeurs propres")
	fig2 = plt.figure()
	# Circle of correlations
	coef = np.transpose(pca.components_)
	cols = ['PC-'+str(x) for x in range(len(ebouli))]
	pc_infos = pd.DataFrame(coef, columns=cols, index=df_norm.columns)
	circleOfCorrelations(pc_infos, ebouli)
	# Plot PCA
	dat = pd.DataFrame(pca_res, columns=cols)
	print(dat)
	plt.annotate("HISTOIRE",(-0.3,0.9))
	plt.annotate("DOC",(0.7,0.7))
	plt.annotate("MATHS",(0.7,-0.2))
	plt.xlabel("Axe 1 (%s%%)" % str(ebouli[0])[:4].lstrip("0."))
	plt.ylabel("Axe 2 (%s%%)" % str(ebouli[1])[:4].lstrip("0."))
	plt.title("ACP-numérique")
	plt.show()
	fig3=plt.figure()
	plt.Circle((0,0),radius=10, color='g', fill=False)
	circle1=plt.Circle((0,0),radius=1, color='g', fill=False)
	fig3.gca().add_artist(circle1)
	for idx in range(len(pc_infos["PC-2"])):
		x = pc_infos["PC-2"][idx]
		y = pc_infos["PC-3"][idx]
		plt.plot([0.0,x],[0.0,y],'k-')
		plt.plot(x, y, 'rx')
		plt.annotate(pc_infos.index[idx], xy=(x,y))
		#42vs15/39 (gestion vs hist/doc) 15vs32 43 46 (hist vs hist) 
		plt.annotate("GESTION",(0.7,0.1))
		plt.annotate("HISTOIRE",(-0.8,0.5))
		plt.annotate("DOC",(-0.9,0))
		plt.annotate("HISTOIRE",(-0.8,-0.5))
	plt.xlabel("Axe 3 (%s%%)" % str(ebouli[2])[:4].lstrip("0."))
	plt.ylabel("Axe 4 (%s%%)" % str(ebouli[3])[:4].lstrip("0."))
	plt.xlim((-1,1))
	plt.ylim((-1,1))
	plt.title("ACP-numérique (2)")
	
	return pc_infos, ebouli


os.chdir("C:/Users/Admin//Documents/BACKUP JAN 2018/Recherche/Muriel/Resultats/")
topics = pd.read_csv("TM-TC.csv",delimiter=";")
d = {'numerique':['82','34','95','76','9','37','88','90','45','46','63','84','35'],'loisirs':['60','89'],'vetements':['23'],'prof':['1','12','21','22','33','52','57','59','67','68','41','53','44'],'medias':['48','55','61','26','71','86']}
fig = plt.figure()
ax = [None]*4
topics['all'] = sum(topics[i] for i in list(topics.columns)[1:-1])
for i,x in enumerate(['numerique','prof','vetements','medias']):
	ax[i] = fig.add_subplot(2,2,i+1)
	topics[x] = sum(topics[i] for i in d[x])/topics['all']
	sery = topics.sort_values(by=x)[x]
	plt.bar(np.arange(47),sery)
	plt.xlabel(x)

##ACP NUM
dnum = {'jeux':['9'],'liberte':['34','95'],'outil':['76','35'],'inquietude':['37'],'videos':['45','46','63','84'],'pedagogie':['82','88'],'radio':['90']}
ntopics = pd.DataFrame()
for x in dnum:
	ntopics[x] = sum(topics[i] for i in dnum[x])
myPCA(ntopics)
plt.show()
	