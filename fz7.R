# 193020603 杨海
g<-"my first list"
h<-c(26,26,18,29)
j<-matrix(c(1:10),ncol = 2,nrow = 5,byrow = F)
no1<-c(1,3)
no2<-c("name1","name2")
k<-data.frame(no1,no2)
data<-list(title = g,age = h,j,k)
summary(data)
data[[2]]
data[["age"]]
data[[1]]
data[["title"]]
data$title
data[[3]][9]
data1<-c(data,e = list(c(T,T,F)))
data2<-list(new1 = c(1,2),new2 = c("a","b"))
data<-c(data2,data)

# 193020603 杨海
patientID<-c(1,2,3,4)
age<-c(25,34,28,52)
diabetes<-c("Type1","Type2","Type1","Type1")
status<-c("poor","Improved","Excellent","poor")
q<- factor (diabetes)
W<- factor (status, order=TRUE)
data<-data.frame (patientID,age,diabetes,status)
data
data1<- str(data)
summary(data)


