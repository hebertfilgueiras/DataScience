df <- data.frame()
class(df)

nomes = character()
idades = numeric()
datas = as.Date(character())
codigos = integer()

df=data.frame(c(nomes,idades,datas,codigos))
 df

 pais = c("EUA", "Dinamarca", "Holanda", "Espanha", "Brasil")
 nome = c("Maurício", "Pedro", "Aline", "Beatriz", "Marta")
 altura = c(1.78, 1.72, 1.63, 1.59, 1.63)
 codigo = c(5001, 2183, 4702, 7965, 8890) 
 
 pesquisa = data.frame(pais,nome,altura,codigo)
pesquisa 

olhos = c("verde", "azul", "azul", "castanho", "castanho")

pesq = cbind(pesquisa,olhos)

pesq

str(pesq)
dim(pesq)
length(pesq)

pesq$pais

pesq[1,4]

nrow(pesq)

head(pesq)

pesq[altura<1.6,]
pesq[altura<1.6,c("codigo","olhos")]

df2 <- data.frame(read.csv(file = 'dframe.csv', header = TRUE, sep = ","))
df2
head(df2)
summary(df2)

df2$Diabete
df2$Status

plot(df2$Admdate)

df3= merge(pesq,df2)

df3

mtcars[4,7]
