trainData <- read.csv("train.csv", header = TRUE, stringsAsFactors = FALSE)
testData <- read.csv("test.csv", header = TRUE, stringsAsFactors = FALSE)
head(trainData)
plot(density(trainData$Age, na.rm = TRUE))
plot(density(trainData$Fare, na.rm = TRUE))

plot(density(trainData$Pclass, na.rm = TRUE))
plot(density(trainData$SibSp, na.rm = TRUE))
plot(density(trainData$Parch, na.rm = TRUE))

counts <- table(trainData$Survived, trainData$Sex)
barplot(counts, xlab = "Gender", ylab = "Number of People", main = "survived and deceased between male and female")
counts[2] / (counts[1] + counts[2])
counts[4] / (counts[3] + counts[4])

Pclass_survival <- table(trainData$Survived, trainData$Pclass)
barplot(Pclass_survival, xlab = "Cabin Class", ylab = "Number of People",
        main = "survived and deceased between male and female")
Pclass_survival[2] / (Pclass_survival[1] + Pclass_survival[2])
Pclass_survival[4] / (Pclass_survival[3] + Pclass_survival[4])
Pclass_survival[6] / (Pclass_survival[5] + Pclass_survival[6])

trainData = trainData[-c(1,9:12)]

trainData$Sex = gsub("female", 1, trainData$Sex)
trainData$Sex = gsub("^male", 0, trainData$Sex)

master_vector = grep("Master.",trainData$Name, fixed=TRUE)
miss_vector = grep("Miss.", trainData$Name, fixed=TRUE)
mrs_vector = grep("Mrs.", trainData$Name, fixed=TRUE)
mr_vector = grep("Mr.", trainData$Name, fixed=TRUE)
dr_vector = grep("Dr.", trainData$Name, fixed=TRUE
                 
                 for(i in master_vector) {
                   trainData$Name[i] = "Master"
                 }
                 for(i in miss_vector) {
                   trainData$Name[i] = "Miss"
                 }
                 for(i in mrs_vector) {
                   trainData$Name[i] = "Mrs"
                 }
                 for(i in mr_vector) {
                   trainData$Name[i] = "Mr"
                 }
                 for(i in dr_vector) {
                   trainData$Name[i] = "Dr"
                 }                 
                 