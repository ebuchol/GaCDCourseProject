#Getting and Cleanind Data Course Project
##The script run_analyis.R performs the following steps:
+ library dplyr is loaded
+ the test and training set and labels as well as the feature and activity labels are read into dataframes from the files
+ the test and training set dataframes receive column headers based on the feature labels
+ the code in the test and training label dataframes is replaced by the explicit activity label
+ the columns based on mean and standdard deviations are selected by using a regular expression which return the name of the features
+ the labels and data are merged for both training and test dataframes
+ BOTH test and training data are merged
+ the final data set with averages on the activities is returned
+ the output is saved to the file output.txt