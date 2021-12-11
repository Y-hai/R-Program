# 1、生成如下形式的矩阵，将行索引名称修改为a-h，使用apply函数对每一列计算均值、求和、排序
x <- matrix(c(3,3,3,3,3,3,3,3,4,3,2,1,2,3,4,5),ncol = 2, nrow = 8,dimnames = list(c("a","b","c","d","e","f","g","h")))
x
apply(x, 2, mean)
apply(x, 2, sum)
apply(x, 2, sort)
# 2、生成如下形式的列表，利用lappy对各成分应用mean求均值，使用sapply计算各列的四分位点，结果返回的数据结构类型为列表
x=list(a=1:10,beta=exp(1:7),logic=c(TRUE,FALSE,FALSE,TRUE))
x
lapply(x, mean)
sapply(x, quantile, simplify = F)
# 3、生成如下形式的因子向量，并用tapply对该因子向量对1：n的向量进行分组求和（n=17）
x = factor(c(1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2),c(1,2,3,4,5))
x
tapply(x, x, sum)
# 4、利用mapply写出实现下列输出结果的语句
mapply(rep, times = 1:4, MoreArgs = list(4))
# 5、请读入泰坦尼克号数据集，数据集在锦城在线资料库下载，请完成下列分析：

