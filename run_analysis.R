## Read and combine the X data sets (test and train)
testXDataSet     <- read.table("./UCI HAR DataSet/test/X_test.txt")
trainXDataSet    <- read.table("./UCI HAR DataSet/train/X_train.txt")
combinedXDataSet <- rbind(testXDataSet, trainXDataSet)

## Read and combine the Y data sets (test and train)
testYDataSet     <- read.table("./UCI HAR DataSet/test/y_test.txt", 
                               col.names="Activity")
trainYDataSet    <- read.table("./UCI HAR DataSet/train/y_train.txt",
                              col.names="Activity")
combinedYDataSet <- rbind(testYDataSet, trainYDataSet)

## Read and combine the Subject data sets (test and train)
testSubjectDataSet     <- read.table("./UCI HAR DataSet/test/subject_test.txt", 
                                     col.names="Subject")
trainSubjectDataSet    <- read.table("./UCI HAR DataSet/train/subject_train.txt",
                                     col.names="Subject")
combinedSubjectDataSet <- rbind(testSubjectDataSet, trainSubjectDataSet)

## Read the Features data set
featuresDataSet <- read.table("./UCI HAR DataSet/features.txt")

## Extact all columns in the Features data set that contains "mean" or "std"
columnVector <- c(grep("mean", featuresDataSet[,2], ignore.case=TRUE), 
                  grep("std", featuresDataSet[,2], ignore.case=TRUE))

cleanDataSet        <- combinedXDataSet[,columnVector]
names(cleanDataSet) <- featuresDataSet[columnVector, 2]

## Combine all data sets together
cleanDataSet <- cbind(combinedSubjectDataSet, combinedYDataSet, cleanDataSet)

## Read the Activity Labels data set
activityLabelsDataSet <- read.table("./UCI HAR DataSet/activity_labels.txt")

## Create a factor for the Acitivity variable and apply levels from 
## the Activity Labels data set
cleanDataSet$Activity <- as.factor(cleanDataSet$Activity)
levels(cleanDataSet$Activity) <- activityLabelsDataSet[,2]

## Create a copy of the clean data set
newDataSet <- cleanDataSet
summarizedNewDataSet <- summarise_each(group_by(newDataSet, Subject, Activity),
                                       funs(mean))
## Write the final data set to a file
write.table(summarizedNewDataSet, file="SummarizedDataFile.txt", row.name=FALSE)