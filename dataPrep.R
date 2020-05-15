library(tidyverse)
library(plyr)
#data import and merge
setwd("./logData/")

# df1<-list.files(pattern = "^eval.*.csv") %>% 
  # map_df(~read_csv(.))

df1<-read.csv("evalLog_2020-05-13 10-30-10.0287.csv")

# df2<-list.files(pattern = "^sample.*.csv") %>% 
  # map_df(~read_csv(.))
  df2<-read.csv("sampleLog_2020-05-13 10-30-10.0167.csv")


  
df<-rbind.fill(df1,df2)%>%arrange(Framecount, PupilTime)    
write_csv(df,"out2.csv")
