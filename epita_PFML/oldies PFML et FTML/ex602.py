from sklearn.feature_extraction.text import CountVectorizer
from sklearn.decomposition import LatentDirichletAllocation
from sklearn.datasets import fetch_20newsgroups
mini,maxi,n_features,n_components = 500,1000,1000,10
dataset = fetch_20newsgroups(shuffle=False,
remove=('headers','footers','quotes'))
data_samples = dataset.data[mini:maxi]
for (i,t) in enumerate(data_samples):
    data_samples[i] = " ".join([x for x in t.split() 
    if x.isalpha() and len(x)>3])
tf_vectorizer = CountVectorizer(max_features=n_features,
    stop_words='english')
tf = tf_vectorizer.fit_transform(data_samples)
lda = LatentDirichletAllocation(n_components=n_components,
        learning_method='batch',max_iter=5)
lda.fit(tf)
tf_feature_names = tf_vectorizer.get_feature_names()
for j, topic in enumerate(lda.components_):
    message = "\nTopic {0}: ".format(j)
    message += " ".join([tf_feature_names[i] 
        for i in topic.argsort()[:-11:-1]])
    print(message)