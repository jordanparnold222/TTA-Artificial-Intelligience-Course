dataCars <- mtcars
dim(dataCars)
names(dataCars)
rownames(dataCars)
sort(dataCars$cyl)
summary(dataCars)
max(dataCars$hp)
min(dataCars$hp)
rownames(dataCars)[which.max(dataCars$hp)]
rownames(dataCars)[which.min(dataCars$hp)]
mean(dataCars$wt)