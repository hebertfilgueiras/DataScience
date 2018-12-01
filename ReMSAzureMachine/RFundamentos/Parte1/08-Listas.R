list_caracter = list('A','B')
list_caracter

lis_int = list(1,3,5)
lis_int

lis_num = list(2.2,3.3,4.4)


lis_composta = list(1,'A',4.4)
lis_composta

lista1 <- list(1:10,c('hebert','filgueiras'),rnorm(10))

lista1

lista1[[2]][1]

lista1[(c(1,2))]

lista1[[2]][2]='azevedo'

names(lista1)= c('interios','varchar','numericos')

lista1["varchar"]

lista1



vec_num = 1:4
vec_char = c('a','b','c')

lista2 = list(Numeros=vec_num, Letras=vec_char)
lista2

lista1
lista1$interios
length(lista1$varchar)
lista1$interios[2]
mode(lista1$numericos)
mode(lista1$varchar)



lista3=c(lista1,lista2)
lista3

v=c(1:3)
l=as.list(v)
l

mat = matrix(1:4,nrow=2)
mat
vec = 1:9
vec
list=list(mat,vec)
list
list[[1]][2,2]
