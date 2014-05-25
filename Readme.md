## Human Activity Recognition Using Smartphones Dataset

The experiments have been carried out by Universit‡ degli Studi di Genova with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The following steps was performed during analysis:

* The train and test data collected by the team of Universit‡ degli Studi di Genova then was read from the X_train.txt, subject_train.txt, y_train.txt, X_test.txt, subject_test.txt, y_test.txt, features.txt, activity_labels.txt. 

* After that train and test data was combined in one dataset.

* Descriptive feature names was added to the dataset.

* Descriptive activity names was added.

* Extracted features related to mean and standard deviation (saved in data/dataset.csv)

* An average of each variable for each activity and subject extracted to separate dataset (saved in data/subj_activity_mean.csv)
