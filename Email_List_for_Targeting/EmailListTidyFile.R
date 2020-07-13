BusinessTargets1 <- read.csv("C:/Users/christine.iyer/Box/FY21 Special Projects/FY21 School of Business Ads/Email_List_for_Targeting/FY21_SOB_Inquiries.csv",
header = T, stringsAsFactors = F)

BusinessTargets2 <- read.csv("C:/Users/christine.iyer/Box/FY21 Special Projects/FY21 School of Business Ads/Email_List_for_Targeting/FY21_SOB_Admits.csv",
header = T, stringsAsFactors = F)  

Business3 <- rbind.data.frame(BusinessTargets1, BusinessTargets2)
write.csv(Business3, "C:/Users/christine.iyer/Box/FY21 Special Projects/FY21 School of Business Ads/Email_List_for_Targeting/FY21_SOB_EmailTargeting.csv", row.names = F)
  
library(dplyr)                           
head(Business3)                             
unique(Business3$Age)
Business3 %>% group_by(Age) %>% summarise(n = n())
Business4 <- Business3 %>% mutate(AgeGroup = 
                       ifelse(is.na(Age), "Working Adult",
                              ifelse(Age >=15 & Age <=18, "HS Student", 
                                       ifelse(Age > 18 & Age <= 24, "Current Undergrad",
                                                "Working Adult")))) %>% select(Email, First.Name, Last.Name, Primary.Address.Line.1, Primary.Address.Line.2, Primary.City, Primary.State.Province, Primary.Zip.Postal.Code, Student.Type, AgeGroup)
write.csv(Business4, "C:/Users/christine.iyer/Box/FY21 Special Projects/FY21 School of Business Ads/Email_List_for_Targeting/FY21_SOB_EmailTargeting.csv", row.names = F)
