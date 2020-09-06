# Getting and Cleaning Data
by Johns Hopkins University, 3rd course of "Data Science" specialization

### Course program

- Week 1: Reading Local, Excel, XML, JSON files
- Week 2: Reading from MySQL, HDF5, The Web, APIs, other sources
- Week 3: Manipulating with data 1
- Week 4: Manipulating with data 2, [Course Project: Getting and Cleaning Data](../Getting_and_Cleaning_Data)


### Course Project: Getting and Cleaning Data
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#### Data description

The dataset includes the following files:
- ``features_info.txt`` — shows information about the variables used on the feature vector
- ``features.txt`` — list of all features
- ``activity_labels.txt`` — links the class labels with their activity name
- ``train/X_train.txt`` — training set
- ``train/y_train.txt`` — training labels
- ``test/X_test.txt`` — test set
- ``test/y_test.txt`` — test labels

The following files are available for the train and test data. Their descriptions are equivalent. 

- ``train/subject_train.txt`` — each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- ``train/Inertial Signals/total_acc_x_train.txt`` — the acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the ``total_acc_x_train.txt`` and ``total_acc_z_train.txt`` files for the Y and Z axis. 
- ``train/Inertial Signals/body_acc_x_train.txt`` — the body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- ``train/Inertial Signals/body_gyro_x_train.txt`` — the angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
