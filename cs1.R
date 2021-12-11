# 杨海 193020603
setwd("F:/zhuomian/r")
x<-c(11,23,25,46,38,30,59,47,21,67)     #创建向量
x[c(2,4)]   #查询向量中第2,第4位置的元素 
which(x>35& x<=50)    #查询x中大于35小于等于50元素的位置 
#创建一个重复因子序列 
Species<-rep(c("setosa","versicolor","virginica"),each=2,length.out=5) 
a<-matrix(x,5,2)  #创建一个元素为x的矩阵
#将矩阵写入数据框data_iris并更改列名 
data_iris<-data.frame(Sepal.Length=a[,1],Sepal.Width=a[,2]) 
write.table(data_iris,"data_iris.txt")  #将数据框保存为txt文件 
#将数据框转化为向量y 
b<-as.matrix(data_iris) 
y<-as.vector(b) 
is.vector(y)   #判断是否为向量
