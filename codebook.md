## Getting-Cleaning-Data-Course-Project ##
# Getting and Cleaning Data Course Code Book #
### March, 2017 ###

## Project objective ##
Create one R script called run_analysis.R that does the following.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Output file ##
The fulldatasummary.txt file contains the summary (mean) for the 86 mean and strandar deviation (std) data, group by activity and subject. 

### Data description ###
* Column "subjects" contains the subject number, numbered from 1 to 30.
* Column "activities" contains the following descriptive labels:
      * 1 WALKING   
      * 2 WALKING_UPSTAIRS 
      * 3 WALKING_DOWNSTAIRS            
      * 4 SITTING           
      * 5 STANDING             
      * 6 LAYING
* The rest of the columns contains the mean for each meassurement, described on each header.      

### Full column list ###
"subject"                                  
"activity"                                 
"1 tBodyAcc-mean()-X"                     
"2 tBodyAcc-mean()-Y"                      
"3 tBodyAcc-mean()-Z"                      
"4 tBodyAcc-std()-X"                      
"5 tBodyAcc-std()-Y"                       
"6 tBodyAcc-std()-Z"                       
"41 tGravityAcc-mean()-X"                 
"42 tGravityAcc-mean()-Y"                  
"43 tGravityAcc-mean()-Z"                  
"44 tGravityAcc-std()-X"                  
"45 tGravityAcc-std()-Y"                   
"46 tGravityAcc-std()-Z"                   
"81 tBodyAccJerk-mean()-X"                
"82 tBodyAccJerk-mean()-Y"                 
"83 tBodyAccJerk-mean()-Z"                 
"84 tBodyAccJerk-std()-X"                 
"85 tBodyAccJerk-std()-Y"                  
"86 tBodyAccJerk-std()-Z"                  
"121 tBodyGyro-mean()-X"                  
"122 tBodyGyro-mean()-Y"                   
"123 tBodyGyro-mean()-Z"                   
"124 tBodyGyro-std()-X"                   
"125 tBodyGyro-std()-Y"                    
"126 tBodyGyro-std()-Z"                    
"161 tBodyGyroJerk-mean()-X"              
"162 tBodyGyroJerk-mean()-Y"               
"163 tBodyGyroJerk-mean()-Z"               
"164 tBodyGyroJerk-std()-X"               
"165 tBodyGyroJerk-std()-Y"                
"166 tBodyGyroJerk-std()-Z"                
"201 tBodyAccMag-mean()"                  
"202 tBodyAccMag-std()"                    
"214 tGravityAccMag-mean()"                
"215 tGravityAccMag-std()"                
"227 tBodyAccJerkMag-mean()"               
"228 tBodyAccJerkMag-std()"                
"240 tBodyGyroMag-mean()"                 
"241 tBodyGyroMag-std()"                   
"253 tBodyGyroJerkMag-mean()"              
"254 tBodyGyroJerkMag-std()"              
"266 fBodyAcc-mean()-X"                    
"267 fBodyAcc-mean()-Y"                    
"268 fBodyAcc-mean()-Z"                   
"269 fBodyAcc-std()-X"                     
"270 fBodyAcc-std()-Y"                     
"271 fBodyAcc-std()-Z"                    
"294 fBodyAcc-meanFreq()-X"                
"295 fBodyAcc-meanFreq()-Y"                
"296 fBodyAcc-meanFreq()-Z"               
"345 fBodyAccJerk-mean()-X"                
"346 fBodyAccJerk-mean()-Y"                
"347 fBodyAccJerk-mean()-Z"               
"348 fBodyAccJerk-std()-X"                 
"349 fBodyAccJerk-std()-Y"                 
"350 fBodyAccJerk-std()-Z"                
"373 fBodyAccJerk-meanFreq()-X"            
"374 fBodyAccJerk-meanFreq()-Y"            
"375 fBodyAccJerk-meanFreq()-Z"           
"424 fBodyGyro-mean()-X"                   
"425 fBodyGyro-mean()-Y"                   
"426 fBodyGyro-mean()-Z"                  
"427 fBodyGyro-std()-X"                    
"428 fBodyGyro-std()-Y"                    
"429 fBodyGyro-std()-Z"                   
"452 fBodyGyro-meanFreq()-X"               
"453 fBodyGyro-meanFreq()-Y"               
"454 fBodyGyro-meanFreq()-Z"              
"503 fBodyAccMag-mean()"                   
"504 fBodyAccMag-std()"                    
"513 fBodyAccMag-meanFreq()"              
"516 fBodyBodyAccJerkMag-mean()"           
"517 fBodyBodyAccJerkMag-std()"            
"526 fBodyBodyAccJerkMag-meanFreq()"      
"529 fBodyBodyGyroMag-mean()"              
"530 fBodyBodyGyroMag-std()"               
"539 fBodyBodyGyroMag-meanFreq()"         
"542 fBodyBodyGyroJerkMag-mean()"          
"543 fBodyBodyGyroJerkMag-std()"           
"552 fBodyBodyGyroJerkMag-meanFreq()"     
"555 angle(tBodyAccMean,gravity)"          
"556 angle(tBodyAccJerkMean),gravityMean)" 
"557 angle(tBodyGyroMean,gravityMean)"    
"558 angle(tBodyGyroJerkMean,gravityMean)" 
"559 angle(X,gravityMean)"                 
"560 angle(Y,gravityMean)"                
"561 angle(Z,gravityMean)" 

## Process ##
1. Load the data test data.
2. Add the headings to the test data.
3. Add the activity column.
4. Add the subject column.
5. Bind the full test data.
6. Add the headings to the train data.
7. Add the activity column.
8. Add the subject column.
9. Bind the full train data.
10. Merge both train and test data into one data set.
11. Trim the full data set to include only the Mean and Standard Deviation (std) columns, besides the subject and activity columns.
13. Replace the activity numbers with the descriptive activity labels.
14. Summarize the data, grouping by subject and activity.
15. Output the summarized data into a file.