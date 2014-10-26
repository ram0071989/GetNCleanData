==================================================================
CodeBook.md
Getting and Cleaning Data - runanalysis.R
Version 1.0
==================================================================
Sriram Subramaniam
==================================================================

==================================================================
Contents of the Tidy Dataset
==================================================================
General Variables
==================================================================
"Subjects"									Subject Identifier
"ActivityId"								Activity Identifier
"ActivityName"								Activity Name
==================================================================
Time Domain Variables
==================================================================
	Mean Measurements Over the X-Axis
==================================================================
"TimeDomain_Body_Accelerometer_Mean-X"
"TimeDomain_GravityAccelerometer_Mean-X"
"TimeDomain_Body_Accelerometer_Jerk_Mean-X" 
"TimeDomain_Body_Gyro_Mean-X" 
"TimeDomain_Body_Gyro_Jerk_Mean-X" 
==================================================================
	Mean Measurements Over the Y-Axis
==================================================================
"TimeDomain_Body_Accelerometer_Mean-Y"
"TimeDomain_GravityAccelerometer_Mean-Y"
"TimeDomain_Body_Accelerometer_Jerk_Mean-Y" 
"TimeDomain_Body_Gyro_Mean-Y"
"TimeDomain_Body_Gyro_Jerk_Mean-Y" 
==================================================================
	Mean Measurements Over the Z-Axis
==================================================================
"TimeDomain_Body_Accelerometer_Mean-Z"
"TimeDomain_GravityAccelerometer_Mean-Z"
"TimeDomain_Body_Accelerometer_Jerk_Mean-Z" 
"TimeDomain_Body_Gyro_Jerk_Mean-Z" 
==================================================================
	Mean Measurements of Magnitudes
==================================================================
"TimeDomain_Body_Accelerometer_Magnitude_Mean" 
"TimeDomain_GravityAccelerometer_Magnitude_Mean" 
"TimeDomain_Body_Accelerometer_Jerk_Magnitude_Mean" 
"TimeDomain_Body_Gyro_Magnitude_Mean" 
"TimeDomain_Body_Gyro_Jerk_Magnitude_Mean" 
==================================================================
	Standard Deviation Measurements Over the X-Axis
==================================================================
"TimeDomain_Body_Accelerometer_StdDeviation-X"
"TimeDomain_GravityAccelerometer_StdDeviation-X" 
"TimeDomain_Body_Accelerometer_Jerk_StdDeviation-X" 
"TimeDomain_Body_Gyro_Jerk_StdDeviation-X" 
"TimeDomain_Body_Gyro_StdDeviation-X" 
==================================================================
	Standard Deviation Measurements Over the Y-Axis
==================================================================
"TimeDomain_Body_Accelerometer_StdDeviation-Y"
"TimeDomain_GravityAccelerometer_StdDeviation-Y" 
"TimeDomain_Body_Accelerometer_Jerk_StdDeviation-Y"
"TimeDomain_Body_Gyro_StdDeviation-Y" 
"TimeDomain_Body_Gyro_Jerk_StdDeviation-Y" 
==================================================================
	Standard Deviation Measurements Over the Z-Axis
==================================================================
"TimeDomain_Body_Accelerometer_StdDeviation-Z"
"TimeDomain_GravityAccelerometer_StdDeviation-Z" 
"TimeDomain_Body_Accelerometer_Jerk_StdDeviation-Z"
"TimeDomain_Body_Gyro_StdDeviation-Z" 
"TimeDomain_Body_Gyro_Jerk_StdDeviation-Z" 
==================================================================
	Standard Deviation Measurements of Magnitudes
==================================================================
"TimeDomain_Body_Accelerometer_Magnitude_StdDeviation" 
"TimeDomain_GravityAccelerometer_Magnitude_StdDeviation" 
"TimeDomain_Body_Accelerometer_Jerk_Magnitude_StdDeviation" 
"TimeDomain_Body_Gyro_Magnitude_StdDeviation" 
"TimeDomain_Body_Gyro_Jerk_Magnitude_StdDeviation" 

==================================================================
Frequency Domain Variables
==================================================================
	Mean Measurements Over the X-Axis
==================================================================
"FrequencyDomain_Body_Accelerometer_Mean-X" 
"FrequencyDomain_Body_Accelerometer_Jerk_Mean-X" 
"FrequencyDomain_Body_Gyro_Mean-X" 
==================================================================
	Mean Measurements Over the Y-Axis
==================================================================
"FrequencyDomain_Body_Accelerometer_Mean-Y" 
"FrequencyDomain_Body_Accelerometer_Jerk_Mean-Y" 
"FrequencyDomain_Body_Gyro_Mean-Y" 
==================================================================
	Mean Measurements Over the Z-Axis
==================================================================
"FrequencyDomain_Body_Accelerometer_Mean-Z" 
"FrequencyDomain_Body_Accelerometer_Jerk_Mean-Z" 
"FrequencyDomain_Body_Gyro_Mean-Z" 
==================================================================
	Mean Measurements of Magnitudes
==================================================================
"FrequencyDomain_Body_Accelerometer_Magnitude_Mean" 
"FrequencyDomain_Body_Body_Accelerometer_Jerk_Magnitude_Mean" 
"FrequencyDomain_Body_Body_Gyro_Magnitude_Mean" 
"FrequencyDomain_Body_Body_Gyro_Jerk_Magnitude_Mean" 
==================================================================
	Standard Deviation Measurements Over the X-Axis
==================================================================
"FrequencyDomain_Body_Accelerometer_StdDeviation-X" 
"FrequencyDomain_Body_Accelerometer_Jerk_StdDeviation-X" 
"FrequencyDomain_Body_Gyro_StdDeviation-X" 
==================================================================
	Standard Deviation Measurements Over the Y-Axis
==================================================================
"FrequencyDomain_Body_Accelerometer_StdDeviation-Y" 
"FrequencyDomain_Body_Accelerometer_Jerk_StdDeviation-Y" 
"FrequencyDomain_Body_Gyro_StdDeviation-Y" 
==================================================================
	Standard Deviation Measurements Over the Z-Axis
==================================================================
"FrequencyDomain_Body_Accelerometer_StdDeviation-Z" 
"FrequencyDomain_Body_Accelerometer_Jerk_StdDeviation-Z" 
"FrequencyDomain_Body_Gyro_StdDeviation-Z" 
==================================================================
	Standard Deviation Measurements of Magnitudes
==================================================================
"FrequencyDomain_Body_Accelerometer_Magnitude_StdDeviation" 
"FrequencyDomain_Body_Body_Accelerometer_Jerk_Magnitude_StdDeviation" 
"FrequencyDomain_Body_Body_Gyro_Magnitude_StdDeviation" 
"FrequencyDomain_Body_Body_Gyro_Jerk_Magnitude_StdDeviation"