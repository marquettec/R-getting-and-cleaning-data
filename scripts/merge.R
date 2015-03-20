# Merging datasets
mergedSubject <- rbind(subjectTrain, subjectTest)
mergedX <- rbind(xTrain, xTest)
mergedY <- rbind(yTrain, yTest)

fullData <- cbind(mergedSubject, mergedY, mergedX)
