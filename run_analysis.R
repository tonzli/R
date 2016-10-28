# Read training set 
x_train <- read.table("./train/X_train.txt", header=FALSE)
y_train <- read.table("./train/y_train.txt", header=FALSE)
subj_train <- read.table("./train/subject_train.txt", header=FALSE)

body_acc_x_train <- read.table("./train/Inertial Signals/body_acc_x_train.txt", header=FALSE)
body_acc_y_train <- read.table("./train/Inertial Signals/body_acc_y_train.txt", header=FALSE)
body_acc_z_train <- read.table("./train/Inertial Signals/body_acc_z_train.txt", header=FALSE)
body_gyro_x_train <- read.table("./train/Inertial Signals/body_gyro_x_train.txt", header=FALSE)
body_gyro_y_train <- read.table("./train/Inertial Signals/body_gyro_y_train.txt", header=FALSE)
body_gyro_z_train <- read.table("./train/Inertial Signals/body_gyro_z_train.txt", header=FALSE)
total_acc_x_train <- read.table("./train/Inertial Signals/total_acc_x_train.txt", header=FALSE)
total_acc_y_train <- read.table("./train/Inertial Signals/total_acc_y_train.txt", header=FALSE)
total_acc_z_train <- read.table("./train/Inertial Signals/total_acc_z_train.txt", header=FALSE)

# Read test set 
x_test <- read.table("./test/X_test.txt", header=FALSE)
y_test <- read.table("./test/y_test.txt", header=FALSE)
subj_test <- read.table("./test/subject_test.txt", header=FALSE)

body_acc_x_test <- read.table("./test/Inertial Signals/body_acc_x_test.txt", header=FALSE)
body_acc_y_test <- read.table("./test/Inertial Signals/body_acc_y_test.txt", header=FALSE)
body_acc_z_test <- read.table("./test/Inertial Signals/body_acc_z_test.txt", header=FALSE)
body_gyro_x_test <- read.table("./test/Inertial Signals/body_acc_x_test.txt", header=FALSE)
body_gyro_y_test <- read.table("./test/Inertial Signals/body_acc_y_test.txt", header=FALSE)
body_gyro_z_test <- read.table("./test/Inertial Signals/body_acc_z_test.txt", header=FALSE)
total_acc_x_test <- read.table("./test/Inertial Signals/total_acc_x_test.txt", header=FALSE)
total_acc_y_test <- read.table("./test/Inertial Signals/total_acc_y_test.txt", header=FALSE)
total_acc_z_test <- read.table("./test/Inertial Signals/total_acc_z_test.txt", header=FALSE)