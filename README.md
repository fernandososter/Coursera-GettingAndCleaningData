##   Coursera-GettingAndCleaningData
## Reporitory for Coursera 3rd Course.

 This is the Coursera Getting and Cleaning Data repository. 
 Here you can find the R script (run_analysis.R) that loads the data 
 and transform it resulting in a tidy data.
 It's reached through 5 steps that does not follow the exercise sequence. Inside the 
 script, you'll find the following sequence: 

    Step 1: Creating only one data set
    Step 4: Changing variables names. This step turns the variable
            more readable. 
    Step 2: Extract only means and standard deviations.
    Step 3: Changing activities names. This spet changes the numbers to text. 
    Step 5: Group, summarizing and writting the content into a file. 

 To run this script you must have a working directory created with the original structure
 that comes with UCI files. To see the data original specification, please visit
 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and here is  the data to download: 
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
  
## Summarization Details
 To summarize i've used the dplyr packege. First organizing the data with group_by function using 
Activity and Subject Variables. The result then is applied to summirise_each dplyr function extracting each column means.
For each Activity and Subject group has one mean value associated.


##   Instructions to execute the script: 

 First download the file with data and unzip it into your workspace. Do not change the orginal 
 structure, it's important for the correct execution. Point your workspace directory to this 
 folder and download the script. 
 Second execute script and wait until it's completed. It'll be printed the result data 
 (data.frame) with tidy data (please see the codebook with a brief variable description below).    
 
  Notice that is mandatory load dplyr library. There are functions that are used to summarise, 
  group and grep from this package.  
 
 The result dataset (that is printed and writed into your workspace) must match with project_resu lt.txt file that you can find into my git repository. 

  Enjoy it!

## Codebook
 
 The result data set contains the following variables: 
 
 These are my own defined variable...
 "Activity" : Divide in WALKING, WALKING DOWNSTAIRS, WALKING UPSTAIRS, STADING, LAYING, SITTING                                          
 "Subject" :  1 to 30.   
 "DataMode" : This variable indicates whether the row is test or train.
 
The variables below are the mean or standart deviation avarage from the original data files. 
    I've renamed it to be more readable.

  "TimeBodyAccelerationMeanX"                         
  "TimeBodyAccelerationMeanY"                         
  "TimeBodyAccelerationMeanZ"                         
  "TimeGravityAccelerationMeanX"                      
  "TimeGravityAccelerationMeanY"                      
  "TimeGravityAccelerationMeanZ"                      
  "TimeBodyAccelerationJerkMeanX"                     
  "TimeBodyAccelerationJerkMeanY"                     
  "TimeBodyAccelerationJerkMeanZ"                     
  "TimeBodyGyroscopeMeanX"                            
  "TimeBodyGyroscopeMeanY"                            
  "TimeBodyGyroscopeMeanZ"                            
  "TimeBodyGyroscopeJerkMeanX"                        
  "TimeBodyGyroscopeJerkMeanY"                        
  "TimeBodyGyroscopeJerkMeanZ"                        
  "TimeBodyAccelerationMagnitudeMean"                 
  "TimeGravityAccelerationMagnitudeMean"              
  "TimeBodyAccelerationJerkMagnitudeMean"             
  "TimeBodyGyroscopeMagnitudeMean"                    
  "TimeBodyGyroscopeJerkMagnitudeMean"                
  "FrequencyBodyAccelerationMeanX"                    
  "FrequencyBodyAccelerationMeanY"                    
  "FrequencyBodyAccelerationMeanZ"                    
  "FrequencyBodyAccelerationMeanFreqX"                
  "FrequencyBodyAccelerationMeanFreqY"                
  "FrequencyBodyAccelerationMeanFreqZ"                
  "FrequencyBodyAccelerationJerkMeanX"                
  "FrequencyBodyAccelerationJerkMeanY"                
  "FrequencyBodyAccelerationJerkMeanZ"                
  "FrequencyBodyAccelerationJerkMeanFreqX"            
  "FrequencyBodyAccelerationJerkMeanFreqY"            
  "FrequencyBodyAccelerationJerkMeanFreqZ"            
  "FrequencyBodyGyroscopeMeanX"                       
  "FrequencyBodyGyroscopeMeanY"                       
  "FrequencyBodyGyroscopeMeanZ"                       
  "FrequencyBodyGyroscopeMeanFreqX"                   
  "FrequencyBodyGyroscopeMeanFreqY"                   
  "FrequencyBodyGyroscopeMeanFreqZ"                   
  "FrequencyBodyAccelerationMagnitudeMean"            
  "FrequencyBodyAccelerationMagnitudeMeanFreq"        
  "FrequencyBodyBodyAccelerationJerkMagnitudeMean"    
  "FrequencyBodyBodyAccelerationJerkMagnitudeMeanFreq"
  "FrequencyBodyBodyGyroscopeMagnitudeMean"           
  "FrequencyBodyBodyGyroscopeMagnitudeMeanFreq"       
  "FrequencyBodyBodyGyroscopeJerkMagnitudeMean"       
  "FrequencyBodyBodyGyroscopeJerkMagnitudeMeanFreq"   
  "angleTimeBodyAccelerationMeangravity"              
  "angleTimeBodyAccelerationJerkMeangravityMean"      
  "angleTimeBodyGyroscopeMeangravityMean"             
  "angleTimeBodyGyroscopeJerkMeangravityMean"         
  "angleXgravityMean"                                 
  "angleYgravityMean"                                 
  "angleZgravityMean"                                 
  "TimeBodyAccelerationStdX"                          
  "TimeBodyAccelerationStdY"                          
  "TimeBodyAccelerationStdZ"                          
  "TimeGravityAccelerationStdX"                       
  "TimeGravityAccelerationStdY"                       
  "TimeGravityAccelerationStdZ"                       
  "TimeBodyAccelerationJerkStdX"                      
  "TimeBodyAccelerationJerkStdY"                      
  "TimeBodyAccelerationJerkStdZ"                      
  "TimeBodyGyroscopeStdX"                             
  "TimeBodyGyroscopeStdY"                             
  "TimeBodyGyroscopeStdZ"                             
  "TimeBodyGyroscopeJerkStdX"                         
  "TimeBodyGyroscopeJerkStdY"                         
  "TimeBodyGyroscopeJerkStdZ"                         
  "TimeBodyAccelerationMagnitudeStd"                  
  "TimeGravityAccelerationMagnitudeStd"               
  "TimeBodyAccelerationJerkMagnitudeStd"              
  "TimeBodyGyroscopeMagnitudeStd"                     
  "TimeBodyGyroscopeJerkMagnitudeStd"                 
  "FrequencyBodyAccelerationStdX"                     
  "FrequencyBodyAccelerationStdY"                     
  "FrequencyBodyAccelerationStdZ"                     
  "FrequencyBodyAccelerationJerkStdX"                 
  "FrequencyBodyAccelerationJerkStdY"                 
  "FrequencyBodyAccelerationJerkStdZ"                 
  "FrequencyBodyGyroscopeStdX"                        
  "FrequencyBodyGyroscopeStdY"                        
  "FrequencyBodyGyroscopeStdZ"                        
  "FrequencyBodyAccelerationMagnitudeStd"             
  "FrequencyBodyBodyAccelerationJerkMagnitudeStd"     
  "FrequencyBodyBodyGyroscopeMagnitudeStd"            
  "FrequencyBodyBodyGyroscopeJerkMagnitudeStd"        
