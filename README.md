# DataCleansingTomasz

The DataCleansingTomasz repository contains the following files:
- run_analysis.R - an R program which reads and cleanse the raw data. The clean data is writen in the output file.
- Codebook.md    - a document describing the variables, the data and the transormations performed to clean up the data
- README.md      - a document describing all files of this repository

The run_analysis.R program reads data from the multiple text files in the getdata-projectfiles-UCI HAR Dataset.zip file available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The getdata-projectfiles-UCI HAR Dataset.zip file contains the following text files required for this analysis:
- features.txt            - List of all features.
- activity_labels.txt     - Links the class labels with their activity name.
- train/X_train.txt       - Training set.
- train/y_train.txt       - Training labels.
- train/subject_train.txt - Train subjects
- test/X_test.txt         - Test set.
- test/y_test.txt         - Test labels.
- test/subject_test.txt   - Test subjects

The purpose of this program is to clean the raw data from the above text files and prepare a clean output text file applying the following steps:
- Merge the training and the test sets to create one data set.
- Extract only the measurements on the mean and standard deviation for each measurement. 
- Use descriptive activity names to name the activities in the data set
- Appropriately label the data set with descriptive variable names. 
- From the data set in the previous step, create a second, independent tidy data set with the average of each variable for     each activity and each subject.

Steps to execute the run_analysis.R program:
- Download the getdata-projectfiles-UCI HAR Dataset.zip file available at:
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Unzip the above file in the R working directory. The UCI HAR Dataset directory will be created.
- Copy the run_analysis.R file to the R working directory
- Excute the run_analysis.R program
- The clean SummarizedDataFile.txt text file will be created in the R working directory
