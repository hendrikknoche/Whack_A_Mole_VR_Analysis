library(tidyverse)
library(plyr)
#data import and merge
setwd("./logData/")

df1<-list.files(pattern = "^eval.*.csv") %>% 
  map_df(~read_csv(.))

df2<-list.files(pattern = "^sample.*.csv") %>% 
  map_df(~read_csv(.))
df<-rbind.fill(df1,df2)%>%arrange(Framecount, PupilTime)    
write_csv(df,"out2.csv")
