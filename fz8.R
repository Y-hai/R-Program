# 193020603杨海
SepalLength = c(5.1, 4.9, 4.7, 4.6)
SepalWidth = c(3.5, 3.0, 3.2, 3.1)
PetalLength = c(1.4, 1.4, 1.3, 1.5)
PetalWidth = rep(0.2, 4)

data <- data.frame(SepalLength,SepalWidth,PetalLength,PetalWidth)
data
# 1利用subset函数进行索引，其中Sepal.Length<5且Sepal.Width<3.3
subset(data, SepalLength < 5&SepalWidth<3.3) 
subset
# 2利用sqldf函数索引，其中Sepal.Length<5且Sepal.Width<3.3
library(sqldf)
newdf <- sqldf("select * from data where SepalLength < 5 and SepalWidth<3.3")
newdf
# 3用两种方法添加一列meanx，为各列对应位置的平均值
data$meanx <- ((data$SepalLength + data$SepalWidth +data$PetalLength + data$PetalWidth)/4)
data <- transform(data,meanx = (SepalLength + SepalWidth + PetalLength + PetalWidth)/4)
# 4修改列名称SepalLength为sepallength;修改行名称为row1，row2，row3，row4
names(data)[1] = "SepalLength"
names(data)[2] = "Sepallength"
rownames(data) = paste0("row",1:4)
data