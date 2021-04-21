#a clean

#保留a中citric.acid中不为0的行
clean_data<-na.omit(a[a$citric.acid!=0,])

#将清洗后的文件存储在data_clean文件夹中
write.csv(clean_data,'data_clean/clean_data.csv')
