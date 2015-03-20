# Getting and Cleaning Data

## Data source variables

* Original experiment description
    * [Human Activity Recognition Using Smartphones Experiment](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* Dataset is available at :
    * [Human Activity Recognition Using Smartphones Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

Original data and experiment description
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

**Aim of our analysis is to normalize and clean data, only focusing on mean and standard deviation measurements**

## Study design : Data collecting process, transformations

First, we're getting data from [Human Activity Recognition Using Smartphones Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

* it is copied and unzipped in ./data directory

Original dataset is split into 2 distinct datasets (one for training (70% of original data), the other for testing (30% remaining))

Our process consists in:

* Getting data
    * **This step takes several minutes**
    * First of all
        * subject_train.txt and subject_train.txt : Individuals participating in tests (represented by a number)
            * File is CSV fixed with columns (containing 561 measure columns)
        * y_train.txt and y_test.txt : Performed and measured activities
            * Single column CSV file
        * X_train.txt and X_test.txt : Measurements
            * Single column CSV file
* Merging dataset
    * Traning and Test datasets have been merged for all 3 type of files
    * **At this step, we join 3 data frame into a single one**
* Only keeping mean and standard deviation
    * Columns are then analyzed and filter to only have a data frame containing subject, activity, and all mean and standard deviation measurements
* Creating a factor for measured activities to ease dataset exploration
    * activity feature is then converted to a factor containing label of all 6 activities
        * Factor levels: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
* Labelize all features
    * All 68 features are labelized for easy understanding of data
* **Generate final tidydata**
    * **Grouped by subject and activity**
    * **Get average values for each mean and standard deviation measurements**

**For step by step and scripts description, please consult our README.md file**

## CodeBook : Tidy dataset description - Features

### Tidydata

The tidydata set is a text csv file (generated through write.table() function)

* Filename: tidydata.txt
    * File contains header
    * ';' separated file
    * '"' quote charater
* Columns : 68 variables - subject, activity, and all 66 mean or standard deviation for each measurement
* Rows : 180 observations (plus header line)

### Features

* 'subject'
    * Subject (individual) participating to study.
    * Field does not contain real name but an Id to preserve anonymous
        * Its range is from 1 to 30
    * Type : integer
    * Unit : NA, identifier
* 'activity'
    * Measured activity
    * Type : Factor
    * Factor levels:
        * "WALKING"
        * "WALKING_UPSTAIRS"
        * "WALKING_DOWNSTAIRS"
        * "SITTING"
        * "STANDING"
        * "LAYING"
    * Unit : String factor
* 'tBodyAccMeanX'
    * Body Acceleration mean - X axis
    * Unit : 'g' gravity, acceleration
* 'tBodyAccMeanY'
    * Body Acceleration mean - Y axis
    * Unit : 'g' gravity, acceleration
* 'tBodyAccMeanZ'
    * Body Acceleration mean - Z axis
    * Unit : 'g' gravity, acceleration
* 'tBodyAccStdX'
    * Body acceleration standard deviation - X axis
    * Unit : 'g' gravity, acceleration
* 'tBodyAccStdY'
    * Body acceleration standard deviation - Y axis
    * Unit : 'g' gravity, acceleration
* 'tBodyAccStdZ'
    * Body acceleration standard deviation - Z axis
    * Unit : 'g' gravity, acceleration
* 'tGravityAccMeanX'
    * Gravity acceleration mean - X axis
    * Unit : 'g' gravity, acceleration
* 'tGravityAccMeanY'
    * Gravity acceleration mean - Y axis
    * Unit : 'g' gravity, acceleration
* 'tGravityAccMeanZ'
    * Gravity acceleration mean - Z axis
    * Unit : 'g' gravity, acceleration
* 'tGravityAccStdX'
    * Gravity acceleration standard deviation - X axis
    * Unit : 'g' gravity, acceleration
* 'tGravityAccStdY'
    * Gravity acceleration standard deviation - Y axis
    * Unit : 'g' gravity, acceleration
* 'tGravityAccStdZ'
    * Gravity acceleration standard deviation - Z axis
    * Unit : 'g' gravity, acceleration
* 'tBodyAccJerkMeanX'
    * Body acceleration jerk mean - X axis
    * Unit : 'g' gravity, acceleration
* 'tBodyAccJerkMeanY'
    * Body acceleration jerk mean - Y axis
    * Unit : 'g' gravity, acceleration
* 'tBodyAccJerkMeanZ'
    * Body acceleration jerk mean - Z axis
    * Unit : 'g' gravity, acceleration
* 'tBodyAccJerkStdX'
    * Body acceleration jerk standard deviation - X axis
    * Unit : 'g' gravity, acceleration
* 'tBodyAccJerkStdY'
    * Body acceleration jerk standard deviation - Y axis
    * Unit : 'g' gravity, acceleration
* 'tBodyAccJerkStdZ'
    * Body acceleration jerk standard deviation - Z axis
    * Unit : 'g' gravity, acceleration
* 'tBodyGyroMeanX'
    * Body gyro (angular velocity vector) mean - X axis
    * Unit : radians/second
* 'tBodyGyroMeanY'
    * Body gyro (angular velocity vector) mean - Y axis
    * Unit : radians/second
* 'tBodyGyroMeanZ'
    * Body gyro (angular velocity vector) mean - Z axis
    * Unit : radians/second
* 'tBodyGyroStdX'
    * Body gyro (angular velocity vector) standard deviation - X axis
    * Unit : radians/second
* 'tBodyGyroStdY'
    * Body gyro (angular velocity vector) standard deviation - Y axis
    * Unit : radians/second
* 'tBodyGyroStdZ'
    * Body gyro (angular velocity vector) standard deviation - Z axis
    * Unit : radians/second
* 'tBodyGyroJerkMeanX'
    * Body gyro (angular velocity vector) jerk mean - X axis
    * Unit : radians/second
* 'tBodyGyroJerkMeanY'
    * Body gyro (angular velocity vector) jerk mean - Y axis
    * Unit : radians/second
* 'tBodyGyroJerkMeanZ'
    * Body gyro (angular velocity vector) jerk mean - Z axis
    * Unit : radians/second
* 'tBodyGyroJerkStdX'
    * Body gyro (angular velocity vector) jerk standard deviation - X axis
    * Unit : radians/second
* 'tBodyGyroJerkStdY'
    * Body gyro (angular velocity vector) jerk standard deviation - Y axis
    * Unit : radians/second
* 'tBodyGyroJerkStdZ'
    * Body gyro (angular velocity vector) jerk standard deviation - Z axis
    * Unit : radians/second
* 'tBodyAccMagMean'
    * Body acceleration magnitude mean
    * Unit : 'g' gravity, acceleration
* 'tBodyAccMagStd'
    * Body acceleration magnitude standard deviation
    * Unit : 'g' gravity, acceleration
* 'tGravityAccMagMean'
    * Gravity acceleration magnitude mean
    * Unit : 'g' gravity, acceleration
* 'tGravityAccMagStd'
    * Gravity acceleration magnitude standard deviation
    * Unit : 'g' gravity, acceleration
* 'tBodyAccJerkMagMean'
    * Body acceleration magnitude jerk mean
    * Unit : 'g' gravity, acceleration
* 'tBodyAccJerkMagStd'
    * Body acceleration magnitude jerk standard deviation
    * Unit : 'g' gravity, acceleration
* 'tBodyGyroMagMean'
    * Body gyro (angular velocity vector) magnitude mean
    * Unit : radians/second
* 'tBodyGyroMagStd'
    * Body gyro (angular velocity vector) magnitude standard deviation
    * Unit : radians/second
* 'tBodyGyroJerkMagMean'
    * Body gyro (angular velocity vector) jerk magnitude mean
    * Unit : radians/second
* 'tBodyGyroJerkMagStd'
    * Body gyro (angular velocity vector) jerk magnitude standard deviation
    * Unit : radians/second
* 'fBodyAccMeanX'
    * Body acceleration mean - X axis
    * Unit : 'g' gravity, acceleration
* 'fBodyAccMeanY'
    * Body acceleration mean - Y axis
    * Unit : 'g' gravity, acceleration
* 'fBodyAccMeanZ'
    * Body acceleration mean - Z axis
    * Unit : 'g' gravity, acceleration
* 'fBodyAccStdX'
    * Body acceleration standard deviation - X axis
    * Unit : 'g' gravity, acceleration
* 'fBodyAccStdY'
    * Body acceleration standard deviation - Y axis
    * Unit : 'g' gravity, acceleration
* 'fBodyAccStdZ'
    * Body acceleration standard deviation - Z axis
    * Unit : 'g' gravity, acceleration
* 'fBodyAccJerkMeanX'
    * Body acceleration jerk mean - X axis
    * Unit : 'g' gravity, acceleration
* 'fBodyAccJerkMeanY'
    * Body acceleration jerk mean - Y axis
    * Unit : 'g' gravity, acceleration
* 'fBodyAccJerkMeanZ'
    * Body acceleration jerk mean - Z axis
    * Unit : 'g' gravity, acceleration
* 'fBodyAccJerkStdX'
    * Body acceleration jerk standard deviation - X axis
    * Unit : 'g' gravity, acceleration
* 'fBodyAccJerkStdY'
    * Body acceleration jerk standard deviation - Y axis
    * Unit : 'g' gravity, acceleration
* 'fBodyAccJerkStdZ'
    * Body acceleration jerk standard deviation - Z axis
    * Unit : 'g' gravity, acceleration
* 'fBodyGyroMeanX'
    * Body gyro (angular velocity vector) mean - X axis
    * Unit : radians/second
* 'fBodyGyroMeanY'
    * Body gyro (angular velocity vector) mean - Y axis
    * Unit : radians/second
* 'fBodyGyroMeanZ'
    * Body gyro (angular velocity vector) mean - Z axis
    * Unit : radians/second
* 'fBodyGyroStdX'
    * Body gyro (angular velocity vector) standard deviation - X axis
    * Unit : radians/second
* 'fBodyGyroStdY'
    * Body gyro (angular velocity vector) standard deviation - Y axis
    * Unit : radians/second
* 'fBodyGyroStdZ'
    * Body gyro (angular velocity vector) standard deviation - Z axis
    * Unit : radians/second
* 'fBodyBodyAccMagMean'
    * Body body accelation magnitude mean
    * Unit : 'g' gravity, acceleration
* 'fBodyBodyAccMagStd'
    * Body body accelation magnitude standard deviation
    * Unit : 'g' gravity, acceleration
* 'fBodyBodyAccJerkMagMean'
    * Body body accelation jerk magnitude mean
    * Unit : 'g' gravity, acceleration
* 'fBodyBodyAccJerkMagStd'
    * Body body accelation jerk magnitude standard deviation
    * Unit : 'g' gravity, acceleration
* 'fBodyBodyGyroMagMean'
    * Body body gyro (angular velocity vector) magnitude mean
    * Unit : radians/second
* 'fBodyBodyGyroMagStd'
    * Body body gyro (angular velocity vector) magnitude standard deviation
    * Unit : radians/second
* 'fBodyBodyGyroJerkMagMean'
    * Body body gyro (angular velocity vector) jerk magnitude mean
    * Unit : radians/second
* 'fBodyBodyGyroJerkMagStd'
    * Body body gyro (angular velocity vector) jerk magnitude standard deviation
    * Unit : radians/second
