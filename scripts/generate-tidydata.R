
# Generate tidydata
# - subject, activity, and 66 AVERAGES computed for mean and standard deviation measurement features
tidydata <- aggregate(labelizedDataset[3:68], by=list(labelizedDataset$subject, labelizedDataset$activity), FUN=mean)
names(tidydata)[1] <- 'subject'
names(tidydata)[2] <- 'activity'

# Writing tidydata.txt output file
write.table(tidydata, './tidydata.txt', row.names=FALSE, na="", sep=";")
