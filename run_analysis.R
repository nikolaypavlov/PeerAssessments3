setwd("~/repos/PeerAssessments3")
library(reshape2)

#
# Read all data tables
#
feature_names <- read.table("data/samsung/features.txt", header=F)
activities <- read.table("data/samsung/activity_labels.txt", header=F)

train <- read.table("data/samsung/train/X_train.txt", header=F)
train_subj <- read.table("data/samsung/train/subject_train.txt", header=F)
train_labels <- read.table("data/samsung/train/y_train.txt", header=F)

test <- read.table("data/samsung/test/X_test.txt", header=F)
test_subj <- read.table("data/samsung/test/subject_test.txt", header=F)
test_labels <- read.table("data/samsung/test/y_test.txt", header=F)

#
# Combine train and test tables
#
train <- cbind(train, train_subj, train_labels)
test <- cbind(test, test_subj, test_labels)
data <- rbind(train, test)

#
# Create descriptive variable names
#
feature_names <- append(as.vector(feature_names[,2]), c("subject", "activity"))
feature_names <- gsub("\\(\\)", "", feature_names)
feature_names <- gsub("[-,\\,]", ".", feature_names)
feature_names <- gsub("\\(", ".", feature_names)
feature_names <- gsub("\\)", "", feature_names)
names(data) <- feature_names

#
# Create descriptive activity names
#
data$activity <- factor(data$activity, labels=as.vector(activities[,2]))

#
# Extract features related to mean and standard deviation
#
columns <- append(grep("mean", names(data), value=T), grep("std", names(data), value=T))
dataset <- data[, c(columns, "subject", "activity")]
write.csv(dataset, file="data/dataset.txt", row.names=F)

#
# Average of each variable for each activity and each subject
#
vars <- !names(dataset) %in% c("subject", "activity")
dataset.long <- melt(dataset, id=c("subject", "activity"))
subj_activity.mean <- dcast(dataset.long, subject+activity ~ variable, mean)
write.csv(subj_activity.mean, file="data/subj_activity_mean.txt", row.names=F)

