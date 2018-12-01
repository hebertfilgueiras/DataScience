mat1 =matrix(c(1:6),nr=2)
mat1
mat2 =matrix(c(1:6),nr=3)
mat3 =matrix(c(1:6),nr=6)

mat3

mat4 =matrix(c(1:6),nc=2)
mat4

help("matrix")


vet1=c(1:10)
matrix(data=vet1,nrow=5,ncol=2,byrow=T)


mat<-matrix(c(2:5),nr=2)
mat
mat[1,2]
mat[2,2]
mat[,2]

matriz =c(1:3)
diag(matriz)

vet=diag(matriz)

vet

w<-matrix(c(2,4,8,12),nr=2,nc=2)
w
t(w)

solve(w)


mat1=matrix(c(2:5),nr=2)
mat2=matrix(c(6:9),nr=2)

mat1
mat2
mat1+mat2
mat1/mat2
mat1*mat2
mat1-mat2


x=c(1:4)
y=matrix(c(2:5),nr=2)
x*y


mat3= matrix(c('futebol','natacao','campo','piscina'),nr=2)
mat3
dimnames(mat3)=(list(c('linha1','linha2'),c('col1','col2')))

mat3['linha1','col2']


mat
mat2

cbind(mat1,mat2)
rbind(mat1,mat2)
