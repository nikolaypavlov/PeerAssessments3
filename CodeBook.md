## CodeBook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc.XYZ - body acceleration
* tGravityAcc.XYZ - acceleration due to gravity
* tBodyAccJerk.XYZ - derivative of body acceleration with respect to time
* tBodyGyro.XYZ - gyroscope values
* tBodyGyroJerk.XYZ - derivative of gyroscope with respect tot time
* tBodyAccMag - body acceleration magnitude
* tGravityAccMag - magnitude of acceleration due to gravity
* tBodyAccJerkMag - magnitude of the derivative of body acceleration with respect to time
* tBodyGyroMag - gyroscope magnitude 
* tBodyGyroJerkMag - magnitude of the derivative of gyroscope with respect to time
* fBodyAcc.XYZ - frequency spectrum of body acceleration
* fBodyAccJerk.XYZ - frequency spectrum of the derivative of body acceleration with repect to time
* fBodyGyro.XYZ - frequency spectrum of gyroscope values 
* fBodyAccMag - frequency spectrum of the body acceleration magnitude
* fBodyAccJerkMag - frequency spectrum of the magnitude of the derivative of acceleration with respect to time
* fBodyGyroMag - frequency spectrum of the magnitude of the gyroscope
* fBodyGyroJerkMag - frequency spectrum of the derivative of the gyroscope with respect to time
* subject - an identifier of the subject who carried out the experiment
* activity - its activity label

The set of variables that were estimated from these signals are:
* mean: Mean value
* std: Standard Deviation
* meanFreq: Weighted average of the frequency components to obtain a mean frequency
