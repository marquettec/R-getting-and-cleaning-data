# 
# This script retrieves data 
# 

# Downloading data
dataSetPath <- './data/UCI HAR Dataset'
if (!file.exists('./data')) {dir.create('./data')}
if (!file.exists('./data/UCI-HAR-data.zip') || !file.exists(dataSetPath)) {
  fileurl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  download.file(fileurl, destfile='./data/UCI-HAR-data.zip', method='curl')
  unzip('./data/UCI-HAR-data.zip', exdir='./data')
}

# Creating subject data frame
subjectTrain <- read.csv(paste(dataSetPath, '/train/subject_train.txt', sep=''), header=FALSE, sep=' ', blank.lines.skip = TRUE)
subjectTest  <- read.csv(paste(dataSetPath, '/test/subject_test.txt', sep=''), header=FALSE, sep=' ', blank.lines.skip = TRUE)

# Creating measurement data frame (all measurements, take really long time)
xTrain <- read.fwf(paste(dataSetPath, '/train/X_train.txt', sep=''), rep(16, 561), header=FALSE, blank.lines.skip = TRUE)
xTest  <- read.fwf(paste(dataSetPath, '/test/X_test.txt', sep=''), rep(16, 561), header=FALSE, blank.lines.skip = TRUE)

# Creating activity data frame 
yTrain <- read.csv(paste(dataSetPath, '/train/y_train.txt', sep=''), header=FALSE, sep=' ', blank.lines.skip = TRUE)
yTest  <- read.csv(paste(dataSetPath, '/test/y_test.txt', sep=''), header=FALSE, sep=' ', blank.lines.skip = TRUE)
