tex <- 'olaaaa'
tex

x = as.character(3.12)
class(x)
mode(x)
typeof(x)



nome = 'hebert'; sobr='azevedp'
paste(nome,sobr)
cat(nome,sobr)


sprintf(" %s anos",33)


texto =('testando string')  
substr(texto,2,8)
nchar(texto)
toupper(texto)
texto


library(stringr)
strsplit("heheh ababab bnsbsnsjd vcvcc", " ")

string1 = c('primeira parte ', 'segunda parte')

string2= c('terceira parte','quarta parte')

str_c(string1,string2)

str_count(string1,'p')

str_locate_all(string2,'e')


str_replace(string2," p","")


string1= '23 mai 2000'
string2= '1 mai 2000'
padrao= 'mai 2000'
grepl(pattern = padrao, x=string1)
padrao = 'mai20'
grepl(pattern = padrao, x=string1)
  

arquivo <- read.csv("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte1/dframe.csv")
head(arquivo)
tail(arquivo)

str_count(arquivo$Idade,'2')

str_locate_all(arquivo$Nome,'ente')


strtail <-function(s, n=1){
  if (n <0)
    substring(s,1-n)
  else
    substring(s,nchar(s)-n+1)  
}
strtail('hebert', n=-5)
