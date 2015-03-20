
# install.packages()
# library('dplyr', 'data.table')

# 0. Getting data
message("Getting data, creating initial data frame (takes several minutes) ...") 
unlink('./data', recursive=TRUE)
source('scripts/getdata.R')
# Result dataframe are datasetTrain and datasetTest
str(subjectTrain)
nrow(xTrain)
str(yTrain)

str(subjectTest)
nrow(xTest)
str(yTest)

# 1. Merges the training and the test sets to create one data set.
# Merging datasets
message("1. Merges the training and the test sets to create one data set.") 
source('scripts/merge.R')
str(mergedSubject)
nrow(mergedX)
str(mergedY)
nrow(fullData)
ncol(fullData)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
message("2. Extracts only the measurements on the mean and standard deviation for each measurement. ")
source('scripts/extract.R')
nrow(meanAndStd)
ncol(meanAndStd)
head(meanAndStd)

# 3. Uses descriptive activity names to name the activities in the data set
message("3. Uses descriptive activity names to name the activities in the data set")
source('scripts/normalize.R')
summary(meanAndStd$V1.1)

# 4. Appropriately labels the data set with descriptive variable names. 
message("4. Appropriately labels the data set with descriptive variable names. ")
source('scripts/labelize.R')
names(labelizedDataset)
nrow(labelizedDataset)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
message("5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.")
source('scripts/generate-tidydata.R')
# >>> OUTPUT File: ./tidydata.csv
#colnames(tidydata)
nrow(tidydata)
ncol(tidydata)
message("Tidydata generated : Please check './tidydata.txt' file")


