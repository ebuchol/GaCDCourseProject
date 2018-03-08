library(dplyr)

#read files
train_set <- read.table("UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt")
test_set <- read.table("UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("UCI HAR Dataset/test/y_test.txt")
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

#add variable names to datasets
names(train_set) <- features[,2]
names(test_set) <- features[,2]

#replace code by activity description
test_labels$Description <- activity_labels[match(test_labels[,1],activity_labels[,1]),2]
train_labels$Description <- activity_labels[match(train_labels[,1],activity_labels[,1]),2]

#columns based on mean() or std()
columns <- grep("(mean|std)\\(\\)", features[,2], ignore.case = TRUE, value=TRUE)

#merge sets with labels and select columns
total_test_data <- cbind(test_labels[,2], test_set[,columns])
colnames(total_test_data)[1] <- "Activity"

total_train_data <- cbind(train_labels[,2], train_set[,columns])
colnames(total_train_data)[1] <- "Activity"

#merge both dataset 
total_data <- rbind(total_test_data, total_train_data)

#create final dataset with averages
average <- total_data %>% group_by(Activity) %>% summarize_all(funs(mean))

write.table(average,file ="output.txt",row.names = FALSE)