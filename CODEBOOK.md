# Codebook for the course project of getting and cleaning data
## the description of column names can be found in the feature.txt file
## the following variables are created in run_analysis.R
+ train_set - dataframe containing training set from file "X_train.txt"
+ train_labels - dataframe containing training labels from file "Y_train.txt"
+ test_set - dataframe containing training set from file "X_test.txt"
+ test_labels - dataframe containing training labels from file "Y_test.txt"
+ features - dataframe containing features from file "features.txt"
+ activity_labels - dataframe containing features from file "activity_labels.txt
+ test_labels$Description - column containing description of activity based on activity_labels
+ training_labels$Description - column containing description of activity based on activity_labels
+ columns - vector of features based on mean and standard deviation
+ total_test_data - dataframe containing selected columns based on columns vector and test data
+ total_training_data - dataframe containing selected columnd based on columns vector and training data
+ average - final dataframe containing averages per activity 