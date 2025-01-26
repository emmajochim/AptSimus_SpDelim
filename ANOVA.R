install.packages("multcomp")
library("multcomp")

##########make sure characters are normally distributed

qqnorm(males$CW.CL, pch = 1, frame = FALSE, main = "CW.CL")
qqline(males$CW.CL, col= "steel blue", lwd =2)

qqnorm(males$PalpTibL.CL, pch = 1, frame = FALSE, main = "PalpTibL.CL")
qqline(males$PalpTibL.CL, col= "steel blue", lwd =2)

qqnorm(males$PalpTibW.CL, pch = 1, frame = FALSE, main = "PalpTibW.CL")
qqline(males$PalpTibW.CL, col= "steel blue", lwd =2)

qqnorm(males$StL.CL, pch = 1, frame = FALSE, main = "StL.CL")
qqline(males$StL.CL, col= "steel blue", lwd =2)

qqnorm(males$StW.CL, pch = 1, frame = FALSE, main = "StW.CL")
qqline(males$StW.CL, col= "steel blue", lwd =2)

qqnorm(males$LL.CL, pch = 1, frame = FALSE, main = "LL.CL")
qqline(males$LL.CL, col= "steel blue", lwd =2)

qqnorm(males$LW.CL, pch = 1, frame = FALSE, main = "LW.CL")
qqline(males$LW.CL, col= "steel blue", lwd =2)

qqnorm(males$FI.CL, pch = 1, frame = FALSE, main = "FI.CL")
qqline(males$FI.CL, col= "steel blue", lwd =2)

qqnorm(males$PI.CL, pch = 1, frame = FALSE, main = "PI.CL")
qqline(males$PI.CL, col= "steel blue", lwd =2)

qqnorm(males$TibI.CL, pch = 1, frame = FALSE, main = "TibI.CL")
qqline(males$TibI.CL, col= "steel blue", lwd =2)

qqnorm(males$MI.CL, pch = 1, frame = FALSE, main = "MI.CL")
qqline(males$MI.CL, col= "steel blue", lwd =2)

qqnorm(males$TarI.CL, pch = 1, frame = FALSE, main = "TarI.CL")
qqline(males$TarI.CL, col= "steel blue", lwd =2)

qqnorm(males$FIV.CL, pch = 1, frame = FALSE, main = "FIV.CL")
qqline(males$FIV.CL, col= "steel blue", lwd =2)

qqnorm(males$PIV.CL, pch = 1, frame = FALSE, main = "PIV.CL")
qqline(males$PIV.CL, col= "steel blue", lwd =2)

qqnorm(males$TibIV.CL, pch = 1, frame = FALSE, main = "TibIV.CL")
qqline(males$TibIV.CL, col= "steel blue", lwd =2)

qqnorm(males$MIV.CL, pch = 1, frame = FALSE, main = "MIV.CL")
qqline(males$MIV.CL, col= "steel blue", lwd =2)

qqnorm(males$TarIV.CL, pch = 1, frame = FALSE, main = "TarIV.CL")
qqline(males$TarIV.CL, col= "steel blue", lwd =2)



qqnorm(females$CW.CL, pch = 1, frame = FALSE, main = "CW.CL")
qqline(females$CW.CL, col= "steel blue", lwd =2)

qqnorm(females$StL.CL, pch = 1, frame = FALSE, main = "StL.CL")
qqline(females$StL.CL, col= "steel blue", lwd =2)

qqnorm(females$StW.CL, pch = 1, frame = FALSE, main = "StW.CL")
qqline(females$StW.CL, col= "steel blue", lwd =2)

qqnorm(females$LL.CL, pch = 1, frame = FALSE, main = "LL.CL")
qqline(females$LL.CL, col= "steel blue", lwd =2)

qqnorm(females$LW.CL, pch = 1, frame = FALSE, main = "LW.CL")
qqline(females$LW.CL, col= "steel blue", lwd =2)

qqnorm(females$FI.CL, pch = 1, frame = FALSE, main = "FI.CL")
qqline(females$FI.CL, col= "steel blue", lwd =2)

qqnorm(females$PI.CL, pch = 1, frame = FALSE, main = "PI.CL")
qqline(females$PI.CL, col= "steel blue", lwd =2)

qqnorm(females$TibI.CL, pch = 1, frame = FALSE, main = "TibI.CL")
qqline(females$TibI.CL, col= "steel blue", lwd =2)

qqnorm(females$MI.CL, pch = 1, frame = FALSE, main = "MI.CL")
qqline(females$MI.CL, col= "steel blue", lwd =2)

qqnorm(females$TarI.CL, pch = 1, frame = FALSE, main = "TarI.CL")
qqline(females$TarI.CL, col= "steel blue", lwd =2)

qqnorm(females$FIV.CL, pch = 1, frame = FALSE, main = "FIV.CL")
qqline(females$FIV.CL, col= "steel blue", lwd =2)

qqnorm(females$PIV.CL, pch = 1, frame = FALSE, main = "PIV.CL")
qqline(females$PIV.CL, col= "steel blue", lwd =2)

qqnorm(females$TibIV.CL, pch = 1, frame = FALSE, main = "TibIV.CL")
qqline(females$TibIV.CL, col= "steel blue", lwd =2)

qqnorm(females$MIV.CL, pch = 1, frame = FALSE, main = "MIV.CL")
qqline(females$MIV.CL, col= "steel blue", lwd =2)

qqnorm(females$TarIV.CL, pch = 1, frame = FALSE, main = "TarIV.CL")
qqline(females$TarIV.CL, col= "steel blue", lwd =2)



##########ANOVA and post-hoc

males<-read.csv("~/Desktop/Dissertation/Ap_simus/manuscript/Morphology/male_measurements_standardized.csv",header=TRUE)

males$clade3 <- as.factor(males$clade3)
model=lm(males$PalpTibL.CL ~ males$clade3)
ANOVA=aov(males$PalpTibL.CL ~ males$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('males$clade3' = "Tukey"))
cld(TUKEY)


model=lm(males$PalpTibW.CL ~ males$clade3)
ANOVA=aov(males$PalpTibW.CL ~ males$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('males$clade3' = "Tukey"))
cld(TUKEY)


model=lm(males$CW.CL ~ males$clade3)
ANOVA=aov(males$CW.CL ~ males$clade3)
summary(ANOVA)


model=lm(males$StL.CL ~ males$clade3)
ANOVA=aov(males$StL.CL ~ males$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('males$clade3' = "Tukey"))
cld(TUKEY)


model=lm(males$StW.CL ~ males$clade3)
ANOVA=aov(males$StW.CL ~ males$clade3)
summary(ANOVA)
#not significant

model=lm(males$LL.CL ~ males$clade3)
ANOVA=aov(males$LL.CL ~ males$clade3)
summary(ANOVA)
#not significant

model=lm(males$LW.CL ~ males$clade3)
ANOVA=aov(males$LW.CL ~ males$clade3)
summary(ANOVA)
#not significant 

model=lm(males$FI.CL ~ males$clade3)
ANOVA=aov(males$FI.CL ~ males$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('males$clade3' = "Tukey"))
cld(TUKEY)


model=lm(males$PI.CL ~ males$clade3)
ANOVA=aov(males$PI.CL ~ males$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('males$clade3' = "Tukey"))
cld(TUKEY)


model=lm(males$TibI.CL ~ males$clade3)
ANOVA=aov(males$TibI.CL ~ males$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('males$clade3' = "Tukey"))
cld(TUKEY)


model=lm(males$MI.CL ~ males$clade3)
ANOVA=aov(males$MI.CL ~ males$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('males$clade3' = "Tukey"))
cld(TUKEY)


model=lm(males$TarI.CL ~ males$clade3)
ANOVA=aov(males$TarI.CL ~ males$clade3)
summary(ANOVA)
#not significant

model=lm(males$FIV.CL ~ males$clade3)
ANOVA=aov(males$FIV.CL ~ males$clade3)
summary(ANOVA)
#not significant

model=lm(males$PIV.CL ~ males$clade3)
ANOVA=aov(males$PIV.CL ~ males$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('males$clade3' = "Tukey"))
cld(TUKEY)


model=lm(males$TibIV.CL ~ males$clade3)
ANOVA=aov(males$TibIV.CL ~ males$clade3)
summary(ANOVA)
#not significant

model=lm(males$MIV.CL ~ males$clade3)
ANOVA=aov(males$MIV.CL ~ males$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('males$clade3' = "Tukey"))
cld(TUKEY)


model=lm(males$TarIV.CL ~ males$clade3)
ANOVA=aov(males$TarIV.CL ~ males$clade3)
summary(ANOVA)
#not significant




females<-read.csv("~/Desktop/Dissertation/Ap_simus/manuscript/Morphology/female_measurements_standardized.csv",header=TRUE)

females$clade3 <- as.factor(females$clade3)

model=lm(females$CW.CL ~ females$clade3)
ANOVA=aov(females$CW.CL ~ females$clade3)
summary(ANOVA)
#not significant

model=lm(females$StL.CL ~ females$clade3)
ANOVA=aov(females$StL.CL ~ females$clade3)
summary(ANOVA)
#not significant

model=lm(females$StW.CL ~ females$clade3)
ANOVA=aov(females$StW.CL ~ females$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('females$clade3' = "Tukey"))
cld(TUKEY)


model=lm(females$LL.CL ~ females$clade3)
ANOVA=aov(females$LL.CL ~ females$clade3)
summary(ANOVA)
#not significant

model=lm(females$LW.CL ~ females$clade3)
ANOVA=aov(females$LW.CL ~ females$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('females$clade3' = "Tukey"))
cld(TUKEY)


model=lm(females$FI.CL ~ females$clade3)
ANOVA=aov(females$FI.CL ~ females$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('females$clade3' = "Tukey"))
cld(TUKEY)


model=lm(females$PI.CL ~ females$clade3)
ANOVA=aov(females$PI.CL ~ females$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('females$clade3' = "Tukey"))
cld(TUKEY)


model=lm(females$TibI.CL ~ females$clade3)
ANOVA=aov(females$TibI.CL ~ females$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('females$clade3' = "Tukey"))
cld(TUKEY)


model=lm(females$MI.CL ~ females$clade3)
ANOVA=aov(females$MI.CL ~ females$clade3)
summary(ANOVA)
#not significant

model=lm(females$TarI.CL ~ females$clade3)
ANOVA=aov(females$TarI.CL ~ females$clade3)
summary(ANOVA)
#not significant

model=lm(females$FIV.CL ~ females$clade3)
ANOVA=aov(females$FIV.CL ~ females$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('females$clade3' = "Tukey"))
cld(TUKEY)


model=lm(females$PIV.CL ~ females$clade3)
ANOVA=aov(females$PIV.CL ~ females$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('females$clade3' = "Tukey"))
cld(TUKEY)


model=lm(females$TibIV.CL ~ females$clade3)
ANOVA=aov(females$TibIV.CL ~ females$clade3)
summary(ANOVA)
#not significant

model=lm(females$MIV.CL ~ females$clade3)
ANOVA=aov(females$MIV.CL ~ females$clade3)
summary(ANOVA)
#not significant

model=lm(females$TarIV.CL ~ females$clade3)
ANOVA=aov(females$TarIV.CL ~ females$clade3)
summary(ANOVA)
TUKEY <- TukeyHSD(x=ANOVA, conf.level = 0.95)
TUKEY
TUKEY <- glht(ANOVA, linfct = mcp('females$clade3' = "Tukey"))
cld(TUKEY)
