#Set Working Directory
setwd("C:/Users/vivek/Desktop/Analytics_Desktop/Courseradatascience/Getting_Cleaning_Data/UCIHARDataset")
# Read X training data and test data and merge them 
X_test <- read.table('test/X_test.txt')
X_train <- read.table('train/X_train.txt')
X_merge<-rbind(X_test,X_train)
features <- read.table("features.txt")
# Give appropriate name to X variables
colnames(X_merge)<-features[,2]
# Extract only those X variables which mean and std
meanStdIndices <- grep("mean\\(\\)|std\\(\\)", features[, 2])
X_merge <- X_merge[, meanStdIndices]


# Read Y training data and test data and merge them 

Y_test <- read.table('test/Y_test.txt')
Y_train <- read.table('train/Y_train.txt')
Y_merge<-rbind(Y_test,Y_train)
# Give appropriate names to Y variables
colnames(Y_merge) <- 'Activity'
Y_merge<-as.matrix(Y_merge)
Y_merge[Y_merge==1]<- "Walking"
Y_merge[Y_merge==2]<- "WALKING_UPSTAIRS"
Y_merge[Y_merge==3]<- "WALKING_DOWNSTAIRS"
Y_merge[Y_merge==4]<- "SITTING"
Y_merge[Y_merge==5]<- "STANDING"
Y_merge[Y_merge==6]<- "LAYING"

#Read Subject training data and test data and merge them 
subject_test <- read.table('test/subject_test.txt')
subject_train <- read.table('train/subject_train.txt')
subject_merge<-rbind(subject_test,subject_train)
colnames(subject_merge) <- 'Subject'

# Convert all the variables into a tidy dataset and write it.
d<-data.frame(subject_merge,Y_merge,X_merge)
write.table(d, file = "output.txt", sep = " " )
