# YH
a = matrix(data=1:10,nrow = 5,ncol = 2,byrow = F,dimnames = list(paste0('r',1:5),paste0('c',1:2)))
print(a[3,2])
print(a["r2","c2"])
print(a[,1])
print(a[c(3,4),])