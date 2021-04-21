#svm model
library(e1071)
#将清洗后数据中的quality转换成因子变量
clean_data$quality<-as.factor(clean_data$quality)
summary(clean_data$quality)

#对清洗后的数据进行建模
s<-sample(1467,1467*0.7,replace=F)

train<-clean_data[s,]
test<-clean_data[-s,]

model1<-svm(quality~.,data=train,kernel='linear')
summary(model1)

p1<-predict(model1,test)
t1<-table(p1,test$quality)

#对该模型准确度进行检测
acc1<-sum(diag(t1))/nrow(test)
acc1
