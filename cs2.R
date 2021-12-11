# 杨海 193020603
# (1)创建一个矩阵，开使用交白式编辑器修改变量名；创建一个数据框，开在数据框中添3个新变量分别为原数据的差、乘积和余数，创
# 建数据框的原数据为a<-c(1,23,4), b<-c(11,22,33,44)。
a<-matrix(1:12,3,4) 
fix(a) 
a<-c(1,2,3,4) 
b<-c(11,22,33,44) 
x1<-data.frame(a,b,d=a-b,e=a*b,f=a%%b)
x1

# (2)构建一个含有缺失值的数据框检测该数据框是否含有缺失值并删除包含缺失值的行，数据框数据内容如下；
data<-data.frame(id=c(1,2,3,4),name=c('张三','李四','王五','赵六'),math=c(70,89,NA,80),English=c(86,78,65,92))
data
anyNA(data)
na.omit(data)

# 创建一个字符串的日期值分别使用as.Date函数、as.POSIXit函数、strptime函数转换为日期变量，具体要求如下： 对字符向量: " 10/27/2017", "02/25/2017", "01/14/2017", "07/18/2017", "04/01/2017"按照月日年的格式进行转
# 对字符向量：“2017-09-08 11：17：52”，“2017-08-07 20：33：02”，使用as.POSIXit进行转换 对_上述字符向量:使用strptime进行转换
# 对上述字符向量:使用strptime进行转换 使用sort函数对数据框score的Chinese列进行从大到小排列，并且把缺失值放在最后，score数据的具体要求如下:
dates <- c("10/27/2017", "02/25/2017", "01/14/2017", "07/18/2017", "04/01/2017") 
# 按照月日年的格式进行转换 
date <- as.Date(dates, "%m/%d/%Y")
date

datas1<- c("2017-09-08 11:17:52", "2017-08-07 20:33:02") 
# 对字符串形式的日期时间值按照格式进行转换
as.POSIXlt(datas1, tz = "", "%Y-%m-%d %H:%M:%S") 
datas2 <- strptime(datas1, "%Y-%m-%d %H:%M:%S")
datas2

score <- data.frame(student = c("A", "B", "C", "D"), gender = c("M", "M", "F", "F"), math = c(90, 70, 80, 60), Eng = c(88, 78, 69, 98), Chinese= c(66, 59, NA, 88)) 
score 
sort(score$Chinese,decreasing=TRUE, na.last=TRUE)

# (3)使用sample函数实现放回与不放回随机抽样
x3 <-c(11,22,33,44,55,66,77,88,99)
sample(x3,5,replace = T)
sample(x3,5,replace = F)

# (4)使用SOL语句对文中数据框stusore进行计算
# 1计算每个人的总成绩并排名(要求显示字段:学号、总成绩)
# 2算每个人单科的最高成绩(要求显示字段:学号、课程、最高成绩)
# 3列出各I]课程成绩最好的学生(要求显示字段:学号、科目、成绩)
# 4列出各I]课程成绩最差的学生(要求显示字段:学号、科目、成绩)
# 数据内容如下所际:

require(sqldf)
name <- c(rep("张三", 1, 3), rep("李四", 3))
subject <- c("数学", "语文", "英语", "数学", "语文", "英语") 
score <- c(89, 80, 70, 90, 70, 80) 
stuid <- c(1, 1, 1, 2, 2, 2)
stuscore <- data.frame(name, subject, score, stuid) 
# 计算每个人的总成绩并排名(要求显示字段:学号,总成绩)
sqldf("select stuid, sum(score) as allscore from stuscore group by stuid order by allscore")
# 计算每个人单科的最高成绩(要求显示字段: 学号,课程,最高成绩) 
sqldf("select stuid, subject, max(score) as maxscore from stuscore group by stuid") 
# 列出各门课程成绩最好的学生(要求显示字段: 学号,科目,成绩) 
sqldf("select stuid,  subject,max(score) as maxscore from stuscore group by subject order by stuid")
# 列出各门课程成绩最差的学生(要求显示字段:学号,科目,成绩) 
sqldf("select stuid,subject, min(score) as minscore from stuscore group by subject order by stuid")

# install.packages('reshape2')
# (5)创建一 个列表，并使用melt函数将其融合，列表内容如下。
data<-list(a=c(11,22,33,44),b=matrix(1:10,nrow=2),c="one,two,three",d=c(TRUE,FALSE))
data
require(reshape2)
melt(data, varnames = c("X", "Y"), value.name = "value", na.rm = FALSE)

# (6)构建一个字符型向量 字串内容如下"we"re","family","you","good" ,并使用sub函数和gsub函数完成字符串替换(将o替换成t) ;
data<-c("we","are","family","you","good")
data1<-sub('o','t',data)
data1
gsub('o','t',data)
# 使用paste函数分别返回一个字符型向量和一个字符串，要求如下:
# 其中字符向量的拼接内容为"ab"与数字1 2 3分别进行拼接
paste('ab',1:3,sep='')
# 返回一个字符串的拼接要求为，将下述两个列表对应位置的内容首先用”-”拼接, 然后用”;”, 连成一个字符串
x <- list(a="st",b="nd",c="yw")
y <- list(d= 1,e= 2)
paste(x,y,sep='-',collapse=";")