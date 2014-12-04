clusterFux
==========

##Purpose

To understand the intricacies of clustering methods on RNAseq data.  

##Method

Analyze the same [data set](https://github.com/TheCodingCollective/clusterFux/tree/master/data) with different clustering methods.  Ideally remain inside the R enviroment. Please view/add/edit to [wiki](https://github.com/TheCodingCollective/clusterFux/wiki) for more. 

###Clustering

1. kohonen (Self Organizing Maps) -  R, need to pick the # clusters 
2. `kmeans()` - 
3. `hclust()` - CUT TREE(consistency between high vs low level analysis, smaller clusters are part of larger ones.
4. HTScluster - High throughput sequences. server, CPU intensive
5. WGCNA - `hclust()` wrapper and ease of use "dynamic tree cut"

###Ordinations

1. PCA
2. MDS
3. PCOA
4. NMDS
5. CoCA
