getwd()
list.files()
.Platform$OS.type
Sys.Date()
system('ls -al')


vec = c(12,3,4,19,34)


dados = c(1:50)
mat = matrix(dados, nrow = 5,ncol = 5,byrow = T)
mat


lis = list(mat, vec)

lis


cha_vet = c('a','b','c')
num_vet =c(3,5,6)
df = data.frame(cha_vet,num_vet)
df

vec>10
mat>10
mat==1 | mat==3

matBoll = mat==1 | mat==3
 
matBoll
vec

#for (i in length(vec)){
for (i in 1:length(vec)){
  if (vec[i]>10){
    print('maior que dezzzz')
  }else{
    print('menor que dezessss')
  }
}

lis2 = list(3,54,6,787,5)

for(p in lis2){
  print(p)
}

mat
mat2 =t(mat)
mat2

for(i in mat){
  for (j in mat2){
    totalColuna <- sum(mat[i],mat2[j])
    totalMatriz = sum(mat)+ sum(mat2)
  }
}

totalColuna
totalMatriz

matrizSoma = mat+mat2
matrizSoma

names(vec)= c('col1','col2','col3','col4','col5')
vec
dimnames(mat) = (list(
                      c('col1','col2','col3','col4','col5'),
                      c('col1','col2','col3','col4','col5')
                      )
                )
mat
names(lis)=c('Vetor','Matriz')
lis

colnames(df)=c('carac','float')
rownames(df)=c('obs1','obs2','obs3')
df


is.vector(vec)
is.vector(df)


as.vector(mat)
as.list(mat)
as.data.frame(mat)
mat
df

as.matrix(df)
as.numeric(df)


mat2 = matrix(c(1:90),10)
mat2
?sample
mat2[50]
mat2[sample(1:50,10)]=NA
mat2

?is.na
is.na(mat2)



vec
sum(vec)
mat
rowSums(mat)
colSums(mat)
df
sum(df$float)
cbind(vec,mat)
rbind(vec,mat)
mat*3


a = c(30,200,100,4)
order(a)
a[order(a)]
a

vec
vec[1]
mat
mat[,2]
mat[1,]
mat[2:3,2:4]
lis
lis[[1]][2,2]
lis$Matriz

mtcars
head(mtcars)
tail(mtcars)
str(mtcars)
mtcars[1:5,4]
mtcars[,'hp']  
mtcars$hp

subset(mtcars, hp>70)
library(dplyr)
slice(mtcars,1:4)
mtcars[order(mtcars$hp),]
