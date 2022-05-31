from matplotlib import pyplot as plt
from sklearn import datasets as ds
from sklearn.cluster import KMeans,AgglomerativeClustering
import numpy as np
blobs = ds.make_blobs()
moons = ds.make_moons(noise=0.05)
circles = ds.make_circles(factor=0.4,n_samples=100,noise=0.05)
Xb,Yb= blobs[0],blobs[1]
Xc,Yc= circles[0],circles[1]
Xm,Ym= moons[0],moons[1]

km,cah = KMeans(n_clusters=3),AgglomerativeClustering(n_clusters=3)
ward = AgglomerativeClustering(n_clusters=3,linkage='average')
Yb_km = km.fit_predict(Xb)
Yb_cah = cah.fit_predict(Xb)
Yb_ward = ward.fit_predict(Xb)

km,cah = KMeans(n_clusters=2),AgglomerativeClustering(n_clusters=2)
ward = AgglomerativeClustering(n_clusters=2,linkage='average')
Ym_km = km.fit_predict(Xm)
Ym_cah = cah.fit_predict(Xm)
Ym_ward = ward.fit_predict(Xm)

km,cah = KMeans(n_clusters=2),AgglomerativeClustering(n_clusters=2)
ward = AgglomerativeClustering(n_clusters=2,linkage='average')
Yc_km = km.fit_predict(Xc)
Yc_cah = cah.fit_predict(Xc)
Yc_ward = ward.fit_predict(Xc)

plt.subplot(331)
plt.scatter(np.transpose(Xb)[0],np.transpose(Xb)[1],c=Yb_km)
plt.subplot(332)
plt.scatter(np.transpose(Xb)[0],np.transpose(Xb)[1],c=Yb_cah)
plt.subplot(333)
plt.scatter(np.transpose(Xb)[0],np.transpose(Xb)[1],c=Yb_ward)
plt.subplot(334)
plt.scatter(np.transpose(Xm)[0],np.transpose(Xm)[1],c=Ym_km)
plt.subplot(335)
plt.scatter(np.transpose(Xm)[0],np.transpose(Xm)[1],c=Ym_cah)
plt.subplot(336)
plt.scatter(np.transpose(Xm)[0],np.transpose(Xm)[1],c=Ym_ward)
plt.subplot(337)
plt.scatter(np.transpose(Xc)[0],np.transpose(Xc)[1],c=Yc_km)
plt.subplot(338)
plt.scatter(np.transpose(Xc)[0],np.transpose(Xc)[1],c=Yc_cah)
plt.subplot(339)
plt.scatter(np.transpose(Xc)[0],np.transpose(Xc)[1],c=Yc_ward)
plt.show()
