# DataCleansingTomasz

This DataCleansingTomasz repository contains the following files:
- run_analysis.R - an R program which reads and cleanse the raw data. The clean data is writen in the output file.
- Codebook.md    - a document describing the variables, the data and the transormations performed to clean up the data
- README.md      - a document describing all files of this repository

1. run_analysis.R
An R program reading data from the multiple text files in the getdata-projectfiles-UCI HAR Dataset.zip file available at:
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
