
tidydata <- aggregate(labelizedDataset[3:68], by=list(labelizedDataset$subject, labelizedDataset$activity), FUN=mean)
names(tidydata)[1] <- 'subject'
names(tidydata)[2] <- 'activity'
write.table(tidydata, './tidydata.txt', row.names=FALSE, na="", sep=";")
