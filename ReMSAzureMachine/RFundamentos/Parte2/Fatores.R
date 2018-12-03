vec1 = c('Macho','Femea','Macho','Femea','Macho')
vec1
fac_vec1 = factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)


grad = c("Mestrado",'Doutorado','Bacharelado','Mestrado','Mestrado')
fac_grad = factor(grad,order=TRUE,levels=c('Doutorado','Mestrado','Bacharelado'))
fac_grad
levels(fac_grad)

summary(fac_grad)

vec2 = c('M','F','M','F','M','F','M','F')
fac_vec2 = factor(vec2)
levels(fac_vec2)
levels(fac_vec2)= c("Femenino","Masculino")
summary(fac_vec2)

data = c(1,3,3,3,1,2,1)
fdata = factor(data)

rdata = factor(data,labels = c('I','II','III'))
rdata
levels(fdata)
levels(rdata)
summary(rdata)


#fator nao ordenado
set1 = c('AA','B','BA','CC','CA','AA','BA','CC','CC')

fat_set1 = factor(set1)
class(fat_set1)
is.ordered(fat_set1)

o.set1 = factor(set1,
                levels=c('AA','A','BA','CA','CC','B'),
                ordered = T)

o.set1

as.numeric(o.set1)


df = read.csv('etnias.csv',sep=',')

df
summary(df)


str(df)

levels(df$Etnia)
summary(df$Etnia)


plot(df$Idade~df$Etnia,xlab='Etnia',ylab = 'Idade',main='Idade por Etnia')

summary(lm(Idade~Etnia,data=df))

# incluindo coluna categorizada
df
str(df)
df$Estado_Civil.cat = factor(df$Estado_Civil, labels = c('Solteiro','Casado','Divorciado'))
df
str(df)
summary(df$Estado_Civil.cat)
