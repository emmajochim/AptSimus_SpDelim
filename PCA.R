require(ggplot2)


##########males##########

#Read your CSV datafile into R
males<-read.csv("~/Desktop/Dissertation/Ap_simus/manuscript/male_measurements.csv",header=TRUE)
#Run PCA analysis - you need to change the number of columns of data you want to perform the pca
pca_males<-prcomp(males[,27:41])
#This will print your PC scores to an output file
capture.output(summary(pca_males), file="simus_males_PC_scores.txt")
#
#Change the data into a dataframe
simus_males_PC_scores=as.data.frame(pca_males$x)
#Write the dataframe to a file
write.csv(simus_males_PC_scores, file="simus_males_PC_scores.csv")
#
#Take column 1 from 'data' file and put that column into the 'scores' file (so that the species names are there instead of numbers)
simus_males_PC_scores$clade3 <- males$clade3

simus_males_PC_scores$SpecimenID <- males$SpecimenID

#Resave that file
write.csv(simus_males_PC_scores, file="simus_males_3_clades_PC_scores.csv")
#
#Read that renamed file of PCA scores into R
pca_males_3_clades <- read.csv("simus_males_3_clades_PC_scores.csv")
#

males$clade3 <- factor(males$clade3, levels = c('North', 'Central', 'South'))

#Plot the PC1~PC2 data and save as PDF
a <- ggplot(data = pca_males_3_clades, aes(x = PC1, y = PC2, col = clade3, shape = clade3))

a <- ggplot(data = pca_males_3_clades, aes(PC1, PC2, color=clade3, shape=clade3)) +
  geom_point(size=5) +
  geom_point(aes(shape=clade3)) +
  stat_ellipse(size=1) +
  scale_color_manual(values = c("#cc4778", "#0d0887", "#f0f921"))

a

ggsave(file="~/Desktop/Dissertation/Ap_simus/manuscript/Morphology/PCA/Apt_simus_males_3_clades_PC1~PC2.pdf", width=10, height=10)



##########females##########

#Read your CSV datafile into R
females<-read.csv("~/Desktop/Dissertation/Ap_simus/manuscript/Morphology/female_measurements_standardized.csv",header=TRUE)
#Run PCA analysis - you need to change the number of columns of data you want to perform the pca
pca_females<-prcomp(females[,4:18])
summary(pca_females)
#
#This will print your PC scores to an output file
capture.output(summary(pca_females), file="simus_females_PC_scores.txt")
#
#Change the data into a dataframe
simus_females_PC_scores=as.data.frame(pca_females$x)
#Write the dataframe to a file
write.csv(simus_females_PC_scores, file="simus_females_PC_scores.csv")
#
#Take column 1 from 'data' file and put that column into the 'scores' file (so that the species names are there instead of numbers)
simus_females_PC_scores$clade3 <- females$clade3

simus_females_PC_scores$SpecimenID <- females$SpecimenID

#Resave that file
write.csv(simus_females_PC_scores, file="simus_females_3_clades_PC_scores.csv")
#
#Read that renamed file of PCA scores into R
pca_females_3_clades <- read.csv("simus_females_3_clades_PC_scores.csv")
#
#Plot the PC1~PC2 data and save as PDF

e <- ggplot(data = pca_females_3_clades, aes(PC1, PC2, color=clade3, shape=clade3)) +
  geom_point(size=5) +
  geom_point(aes(shape=clade3)) +
  stat_ellipse(size=1) +
  scale_color_manual(values = c("#cc4778", "#0d0887", "#f0f921"))

e

ggsave(file="~/Desktop/Dissertation/Ap_simus/manuscript/Morphology/PCA/Apt_simus_females_3_clades_PC1~PC2.pdf", width=10, height=10)
