#Getting and Cleanind Data Course Project
##The script run_analyis.R performs the following steps:
+ the following files are loaded into dataframes:
++ the test and training set, labels and subjects
++ features 
++ activity labels 
+ the test and training set dataframes receive column headers based on the feature labels
+ the code in the test and training label dataframes is replaced by the explicit activity label
+ the columns based on mean and standdard deviations are selected by using a regular expression
+ the labels and data are merged for both training and test dataframes
+ BOTH test and training data are merged
+ the final data set with averages on the activities and subjects is returned
+ the output is saved to the file tidydataset.txt