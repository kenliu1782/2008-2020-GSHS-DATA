library(readr)
gshs_sum_score <- read_csv("~/Desktop/INTERNSHIP/data/gshs_sum_score.csv")

View(gshs_sum_score)

# correlation plot among all questions 

gshs_new <- gshs_sum_score %>% 
  select(paste0("question_00", c(1:9)), 
         paste0("question_0", c(10:99)), 
         paste0("question_", c(100:122))) 

res <- cor(gshs_new)
library(corrplot)
png(file="~/Desktop/INTERNSHIP/figures/all_plot.png")
corrplot(res,tl.cex = 0.3,  
         tl.col = "black", tl.srt = 45)
dev.off()
# section A correlation (question_001~question_045, question_087~question_093) schoolclimate

gshs_a <- gshs_sum_score %>% 
  select(paste0("question_00", c(1:9)), 
         paste0("question_0", c(10:45)), 
         paste0("question_0", c(87:93)))

res_a <- cor(gshs_a)
library(corrplot)
png(file="~/Desktop/INTERNSHIP/figures/schoolclimate_plot.png")
corrplot(res_a,tl.cex = 0.3,  
         tl.col = "black", tl.srt = 45)
dev.off()
# section B correlation (question_046~question_049) Parent Involvemen

gshs_b <- gshs_sum_score %>% 
  select(paste0("question_0", c(46:49)))

res_b <- cor(gshs_b)
library(corrplot)
png(file="~/Desktop/INTERNSHIP/figures/ParentInvolvemen_plot.png")
corrplot(res_b,tl.cex = 1,  
         tl.col = "black", tl.srt = 45)
dev.off()
# section C correlation (question_050~question_062) Drug and Alcohol Use

gshs_c <- gshs_sum_score %>% 
  select(paste0("question_0", c(50:62)))

res_c <- cor(gshs_c)
library(corrplot)
png(file="~/Desktop/INTERNSHIP/figures/Drug_and_Alcohol_Use_plot.png")
corrplot(res_c,tl.cex = 1,  
         tl.col = "black", tl.srt = 45)
dev.off()
# section D correlation (question_063~question_086) StudentInformation

gshs_d <- gshs_sum_score %>% 
  select(paste0("question_0", c(63:86)))

res_d <- cor(gshs_d)
library(corrplot)
png(file="~/Desktop/INTERNSHIP/figures/StudentInformation_plot.png")
corrplot(res_d,tl.cex = 0.8,  
         tl.col = "black", tl.srt = 45)
dev.off()
# section B_2 correlation (question_094~question_100) Age of Onset

gshs_b2 <- gshs_sum_score %>% 
  select(paste0("question_0", c(94:99)), question_100)

res_b2 <- cor(gshs_b2)
library(corrplot)
png(file="~/Desktop/INTERNSHIP/figures/Age_of_Onset_plot.png")
corrplot(res_b2,tl.cex = 0.8,  
         tl.col = "black", tl.srt = 45)
dev.off()
# section C_2 correlation (question_101~question_105) Perceptions of Risk/Harm

gshs_c2 <- gshs_sum_score %>% 
  select(paste0("question_", c(101:105)))

res_c2 <- cor(gshs_c2)
library(corrplot)
png(file="~/Desktop/INTERNSHIP/figures/Perceptions_of_Risk_Harm_plot.png")
corrplot(res_c2,tl.cex = 0.8,  
         tl.col = "black", tl.srt = 45)
dev.off()
# section D_2 correlation (question_106~question_113) Peer/AdultDisapproval

gshs_d2 <- gshs_sum_score %>% 
  select(paste0("question_", c(106:113)))

res_d2 <- cor(gshs_d2)
library(corrplot)
png(file="~/Desktop/INTERNSHIP/figures/Peer_AdultDisapproval_plot.png")
corrplot(res_d2,tl.cex = 0.8,  
         tl.col = "black", tl.srt = 45)
dev.off()
# section E correlation (question_106~question_113) MentalHealth

gshs_e <- gshs_sum_score %>% 
  select(paste0("question_", c(114:121)))

res_e <- cor(gshs_e)
library(corrplot)
png(file="~/Desktop/INTERNSHIP/figures/MentalHealth_plot.png")
corrplot(res_e,tl.cex = 0.8,  
         tl.col = "black", tl.srt = 45)
dev.off()





