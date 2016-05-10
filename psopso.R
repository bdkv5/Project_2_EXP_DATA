km_data<- iris[,1:4]
km_data_1<- as.matrix(km_data)
library(clv)
km <- kmeans(km_data_1,6)
km_scatter <- cls.scatt.data(km_data_1,km$cluster)
km_intra <- mean(km_scatter$intracls.average)
km_inter<- (sum(km_scatter$intercls.centroid))/(length(km_scatter$intercls.centroid) -sqrt(length(km_scatter$intercls.centroid)))

fn_data<- iris[,1:4]
fn_data_1<- as.matrix(fn_data)
library(clv)
fn <- fanny(fn_data_1,6,maxit = 1000)
fn_scatter <- cls.scatt.data(fn_data_1,fn$cluster)
fn_intra <- mean(fn_scatter$intracls.average)
fn_inter<- (sum(fn_scatter$intercls.centroid))/(length(fn_scatter$intercls.centroid) -sqrt(length(fn_scatter$intercls.centroid)))

pam_data<- iris[,1:4]
pam_data_1<- as.matrix(pam_data)
library(clv)
pam <- pam(pam_data_1,6)
pam_scatter <- cls.scatt.data(pam_data_1,pam$cluster)
pam_intra <- mean(pam_scatter$intracls.average)
pam_inter<- (sum(pam_scatter$intercls.centroid))/(length(pam_scatter$intercls.centroid) -sqrt(length(pam_scatter$intercls.centroid)))

out <- read.csv(file = "/Users/bhargavdevarapalli/Documents/MATLAB/hyd_2.txt",sep="", na.strings = "?")
out1 <- as.matrix(out)
out3 <- subset(out1, select = 'Data')
out4 <- as.vector(out3)
hyd_data<- iris[,1:4]
hyd_data_1<- as.matrix(hyd_data)
library(clv)
hyd_scatter <- cls.scatt.data(hyd_data_1,out4)
hyd_intra <- mean(hyd_scatter$intracls.average)
hyd_inter<- (sum(hyd_scatter$intercls.centroid))/(length(hyd_scatter$intercls.centroid) -sqrt(length(hyd_scatter$intercls.centroid)))



print(fn_inter)
print(km_inter)
print(pam_inter)


print(fn_intra)
print(km_intra)
print(pam_intra)


print(hyd_inter)
print(hyd_intra)
