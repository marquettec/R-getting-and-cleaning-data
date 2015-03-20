# see features.txt and README.txt for mean and standard deviation columns
selectedCols <- c(1, 2, 3:8, 43:48, 83:88, 123:128, 163:168, 203:204, 216:217, 229:230, 242:243, 255:256, 268:273, 347:352, 426:431, 505:506, 518:519, 531:532, 544:545)
selectedCols
meanAndStd <- fullData[,selectedCols]
