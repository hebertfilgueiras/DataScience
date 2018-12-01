# Exercício 1 -Crie um vetor com 12 números inteiros
vetor = c(1:12)

# Exercício 2 -Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
matriz = matrix(c(1:16),nrow=4,ncol = 4)
matriz
# Exercício 3 -Crie uma lista unindo o vetor e matriz criados anteriormente

lista = list(vetor,matriz)
lista

# Exercício 4 -Usando a função read.table() leia o arquivo do link abaixo para uma dataframe# http://data.princeton.edu/wws509/datasets/effort.dat
arquivo = read.table('http://data.princeton.edu/wws509/datasets/effort.dat')
df = data.frame(arquivo)
df

# Exercício 5 -Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:# c("config", "esfc", "chang")
names(df)=c("config", "esfc", "chang")

# Exercício 6 -Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris, imprima um resumo do dataset.
dfIris = data.frame(iris)
dim(dfIris)
summary(dfIris)
head(dfIris)
nrow(dfIris)

# Exercício 7 -Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(dfIris[,1],dfIris[,2])
# Exercício 8 -Usando s função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
?subset
specialIris = dfIris[dfIris$Petal.Length>1.4,]
subset(dfIris,Petal.Length>1.4)
specialIris

head(dfIris)

# Exercícios 9 (Desafio) -Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), 
#divida o dataframe em um subset de 15 linhas
# Dica 1: você vai ter que instalar e carregar o pacote dplyr
# Dica 2: consulte o help para aprender como usar a função slice()
??slice
install.packages('dplyr')
library(dplyr)
dfIris
desafio = slice(dfIris,1:15)
desafio
# Exercícios 10 -Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: use o RSiteSearch()para aprender como usar a função filteràO gabarito com as respostas vocêencontra no script12-Exercicios-Capitulo-2.Rno arquivo zip comos demais scripts deste capítulo.
RSiteSearch('filter')
?filter
filter(desafio,desafio$Sepal.Length>4.9)

desafio[desafio$Sepal.Length>4.9,c("Petal.Length","Petal.Width","Species")]
       