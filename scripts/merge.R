# Merging datasets
mergedSubject <- rbind(subjectTrain, subjectTest)
mergedX <- rbind(xTrain, xTest)
mergedY <- rbind(yTrain, yTest)

# Creating full data frame to work on (subject, activity and 66 measurement columns)
fullData <- cbind(mergedSubject, mergedY, mergedX)
