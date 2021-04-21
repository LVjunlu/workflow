#read .csv

a<-read.csv('data_raw/wine.csv',
            head=T,sep=';')
head(a)

write.csv(a,file='data_raw/wine.csv')
