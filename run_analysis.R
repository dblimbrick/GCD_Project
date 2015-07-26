#run_analysis <- function() {

	# body_acc

	body_acc_x_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt"))
	body_acc_x_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt"))
	body_acc_y_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt"))
	body_acc_y_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt"))
	body_acc_z_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt"))
	body_acc_z_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt"))

	# body_gyro

	body_gyro_x_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt"))
	body_gyro_x_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt"))
	body_gyro_y_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt"))
	body_gyro_y_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt"))
	body_gyro_z_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt"))
	body_gyro_z_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt"))

	# total_acc

	total_acc_x_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt"))
	total_acc_x_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt"))
	total_acc_y_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt"))
	total_acc_y_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt"))
	total_acc_z_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt"))
	total_acc_z_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt"))

	# subject

	subject_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/subject_train.txt"))
	subject_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/subject_test.txt"))

	# X

	X_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/X_train.txt"))
	X_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/X_test.txt"))

	# y

	y_train <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/train/y_train.txt"))
	y_test <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/test/y_test.txt"))


	# names <- read.table(unz("getdata_projectfiles_UCI HAR Dataset.zip", "UCI HAR Dataset/features.txt"))

	# TASK 1

	# Merge the training and the test sets

	# data3 <- rbind(data1,data2)

	body_acc_x <- rbind(body_acc_x_train,body_acc_x_test)

	body_acc_y <- rbind(body_acc_y_train,body_acc_y_test)

	body_acc_z <- rbind(body_acc_z_train,body_acc_z_test)

	body_gyro_x <- rbind(body_gyro_x_train,body_gyro_x_test)

	body_gyro_y <- rbind(body_gyro_y_train,body_gyro_y_test)

	body_gyro_z <- rbind(body_gyro_z_train,body_gyro_z_test)

	total_acc_x <- rbind(total_acc_x_train,total_acc_x_test)

	total_acc_y <- rbind(total_acc_y_train,total_acc_y_test)

	total_acc_z <- rbind(total_acc_z_train,total_acc_z_test)

	X <- rbind(X_train,X_test)

	y <- rbind(y_train,y_test)

	# TASK 2

	# Extracts only the measurements on the mean and standard deviation for each measurement

	# Mean

	body_acc_x_mean <- sapply(body_acc_x,mean)

	body_acc_y_mean <- sapply(body_acc_y,mean)

	body_acc_z_mean <- sapply(body_acc_z,mean)

	body_gyro_x_mean <- sapply(body_gyro_x,mean)

	body_gyro_y_mean <- sapply(body_gyro_y,mean)

	body_gyro_z_mean <- sapply(body_gyro_z,mean)

	total_acc_x_mean <- sapply(total_acc_x,mean)

	total_acc_y_mean <- sapply(total_acc_y,mean)

	total_acc_z_mean <- sapply(total_acc_z,mean)

	X_mean <- sapply(X,mean)

	y_mean <- sapply(y,mean)

	#Standard Deviation

	body_acc_x_sd <- sapply(body_acc_x,sd)

	body_acc_y_sd <- sapply(body_acc_y,sd)

	body_acc_z_sd <- sapply(body_acc_z,sd)

	body_gyro_x_sd <- sapply(body_gyro_x,sd)

	body_gyro_y_sd <- sapply(body_gyro_y,sd)

	body_gyro_z_sd <- sapply(body_gyro_z,sd)

	total_acc_x_sd <- sapply(total_acc_x,sd)

	total_acc_y_sd <- sapply(total_acc_y,sd)

	total_acc_z_sd <- sapply(total_acc_z,sd)

	X_sd <- sapply(X,sd)

	y_sd <- sapply(y,sd)

	# Make into one data table

	data_means <- c(body_acc_x_mean,body_acc_y_mean,body_acc_z_mean,body_gyro_x_mean,body_gyro_y_mean,body_gyro_z_mean,total_acc_x_mean,total_acc_y_mean,total_acc_z_mean,X_mean,y_mean)

	data_sds <- c(body_acc_x_sd,body_acc_y_sd,body_acc_z_sd,body_gyro_x_sd,body_gyro_y_sd,body_gyro_z_sd,total_acc_x_sd,total_acc_y_sd,total_acc_z_sd,X_sd,y_sd)

	data <- rbind(data_means,data_sds)

	# TASK 3
	
	# Uses descriptive activity names to name the activities in the data set

	

	# TASK 4

	# Appropriately labels the data set with descriptive variable names

	# TASK 5

	# Create tidy data set


	# Output tidy data set
        write.table(data,file="tidy_data.txt", row.names = FALSE) 

#}
