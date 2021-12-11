# 杨海193020603
score <- data.frame(student = c("A","B","C","D"),
                    gender = c("M","M","F","F"),math = c(90,70,80,60),
                    Eng = c(88,78,69,98),p1 = c(66,59,NA,88))
#(1)检测score是否存在缺失值
anyNA(score,recursive = F)
#(2)删除score中存在缺失值的行
na.omit(score)

#时间型变量转换
#(1)将字符型变量转换为日期型变量使用as.Date，保存在date中
#"01-27-2016", "02-27-2016", "01-14-2016"
d <- c("01-27-2016", "02-27-2016", "01-14-2016")
data <- as.Date(d,format = '%m-%d-%Y')
#(2)利用strftime将date的格式转换成如下字符串形式
#"2016*01*27" "2016*02*27" "2016*01*14"
data <- strftime(data,format = '%Y*%m*%d')
data

#3、使用order函数对数据框score的math列进行降序排序，
#数据框其它列进行相应的顺序变化
score[order(-score$math),]

#4、数据框编辑
#创建示例数据框data.iris <- data.frame(Sepal.Length = c(5.1, 4.9, 4.7, 4.6), Sepal.Width = c(3.5, 3.0, 3.2, 3.1),   Petal.Length = c(1.4, 1.4, 1.3, 1.5), Pe.tal.Width = rep(0.2, 4))
data.iris <- data.frame(Sepal.Length = c(5.1, 4.9, 4.7, 4.6), 
                        Sepal.Width = c(3.5, 3.0, 3.2, 3.1),
                        Petal.Length = c(1.4, 1.4, 1.3, 1.5), 
                        Pe.tal.Width = rep(0.2, 4))
#（1）增加新的样本数据list(5.0, 3.6, 1.4, 0.2)
l1 <- list(5.0, 3.6, 1.4, 0.2)
data.iris <- rbind(data.iris,l1)
data.iris
#（2）增加数据集的新属性变量Species该列值全部为"setosa"
S = rep("setosa",5)
data.iris$Species <- S
data.iris
