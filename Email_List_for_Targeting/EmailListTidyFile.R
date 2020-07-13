BusinessTargets1 <- read.csv("C:/Users/christine.iyer/Box/FY21 Special Projects/FY21 School of Business Ads/Email_List_for_Targeting/FY21_SOB_Inquiries.csv",
header = T, stringsAsFactors = F)

BusinessTargets2 <- read.csv("C:/Users/christine.iyer/Box/FY21 Special Projects/FY21 School of Business Ads/Email_List_for_Targeting/FY21_SOB_Admits.csv",
header = T, stringsAsFactors = F)  

Business3 <- rbind.data.frame(BusinessTargets1, BusinessTargets2)
write.csv(Business3, "C:/Users/christine.iyer/Box/FY21 Special Projects/FY21 School of Business Ads/Email_List_for_Targeting/FY21_SOB_EmailTargeting.csv", row.names = F)
                             
                             