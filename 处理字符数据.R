# 完成下列字符处理操作：
# 1、生成字符向量txt，内容如下，匹配该字符串中含有“foo”或者”rm“的字符串，返回匹配项下标
# "arm","foot","lefroo", "bafoobar"
txt <-c("arm","foot","lefroo", "bafoobar") 
grep("foo|rm",txt)
# 2、在letters字符串向量中匹配含有a,b,c,d,e的字符串，返回匹配项下标
letters # 固定变量,从a-z
grep("[a-e]",letters)
# 3、生成字符向量txt，内容如下，查询含有"w...h"或"we"的字符串，返回逻辑向量，TRUE表示匹配
# "whatever", "is", "worth", "doing", "is", "worth", "doing", "well"
txt <-c("whatever", "is", "worth", "doing", "is", "worth", "doing", "well")
grepl("w.*h|we",txt)
# 4、生成字符向量txt，内容如下，在该向量中截取 每个分量字符串索引为2-5的字符串
# "asfef", "qwerty", "yuiop[", "b", "stuff.blah.yech"
txt <-c("asfef", "qwerty", "yuiop[", "b", "stuff.blah.yech")
substr(txt,2,5)
# 5、将str字符串末尾处的空格去掉str <- "Now is the time      "
str <- "Now is the time      "
substr(str,1,15)
# 6、生成字符向量txt，内容如下，所有"t"和"r"替换为"k"
# "whatever", "is", "worth", "doing", "is", "worth", "doing", "well"
txt <-c("whatever", "is", "worth", "doing", "is", "worth", "doing", "well") 
gsub("[tr]","k",txt)
# 7、对下列字符串"a.b.c" 按照字符".“进行分割
str <-"a.b.c"
strsplit(str,".",fixed = T)
# 8、实现月份向量month.abb与小写字符向量letters的拼接，链接符号为”-“；用”；“实现向量各个分量的拼接
paste(month.abb,letters,sep = "-",collapse = ";")