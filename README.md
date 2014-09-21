Coursera-Getting-and-Cleaning-Data
==================================

This is my project for Coursera Getting and Cleaning Data Assignment. The original dataset used for this project is Human Activity Recognition Using Smartphones Dataset and comes from the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The code is contained in the script run_analysis.R. Please refer to the following steps to understand the script.

Step 1 : Read the X training set from 'train/X_train.txt':   and X test set from 'test/X_test.txt': and merge them using rbind function in R.

Step 2: Extract names of features from 'features.txt': and then give appropriate names  to variables in X from features.txt.

Step 3: Filter out only those variables from X which have mean and std using grep function.

Step 4: : Read the Y training set from 'train/y_train.txt':and Y test set from 'test/y_test.txt':and merge them using rbind function in R.

Step 5: Give proper activity names to Y variables like Walking,Sitting. For that the y dataframe was converted into matrix .

Step 6: : Read the Subject training set from - 'train/subject_train.txt': and Subject  test set from - 'test/subject_test.txt':and merge them using rbind function in R.

Step 7: Join X_ Merge, Y_Merge, Subject_Merge  in a dataframe and write the output in a text file

