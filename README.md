# Getting-and-Cleaning-Data

Coursera Getting and Cleaning Data Project

This repository is for the project assignment for Coursera course: Getting and Cleaning Data

## Project Requirement

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
Good luck!


## Files in This Repository:

README.md             
    - the file you are reading

CodeBook.md           
    - file contains the data description and processing method for the final tidy data 

run_analysis.R        
    - the R code used to read the raw data, process the data and generate the final tidy data, with comments indicate the meaning for each processing steps.

tidy.data.csv         
    - the final tidy data contains the average of mean and standard deviation for each measurement for each activity and each subject. 

## data process 
the following data was used to generate the tidy.data, for more detailed info about the raw data, please refer to the README.txt and feature_info.txt from the original zip file.
 
/train/X_train.txt        - all measures from accelerometers

/train/y_train.txt        - indicator for different activity

/train/subject_train.txt  - indicator for different subject

/test/X_test.txt          - same as train data

/test/y_test.txt          - same as train data

/test/subject_test.txt    - same as train data

1st step: measure, activity indicator, subject indicator are merged together for train and test, then combine train and test to generate the full dataset. Notice that the activity indicator was translated to the real meaning.

2nd step: the measurements on the mean and standard deviation for each measurement are extracted
 
3rd step: all above measurements are averaged on activity and subject level to get the final tidy data	
	