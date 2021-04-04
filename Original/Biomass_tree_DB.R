library(dplyr)

df <- readxl::read_excel("c:/aaaWork/data/NCData/Original/Biomass_tree_DB.xlsx")
str(df)
tmp <- xtabs(~Species,data=df)
tmp <- tmp[tmp>100]
df <- filterD(df,Species %in% names(tmp)) %>%
  mutate(Species=factor(Species))
xtabs(~Species+Country,data=df)

df1 <- FSA::filterD(df,Species=="Picea abies (L.) Karst.") %>%
  FSA::filterD(Country %in% c("GER","SWZ","UKR")) %>%
  select(Species,Origin,Age=`Tree age`,DBH,Ht=`H tree`,Pst,Pbr,Pf,Pabo,Country)
xtabs(~Country,data=df1)
plot(Pst~Pabo,data=df1)
pairs(~DBH+Ht+Age+Pst+Pbr+Pf+Pabo,data=df1)
xtabs(~Age+Country,data=df1)

df2 <- df1 %>%
  mutate(GAge=case_when(
    Age<50 ~ "<50",
    Age<=100 ~ "50-100",
    TRUE ~ ">100"
  ))

xtabs(~Country+GAge,data=df2)

write.csv(df2,file="PiceaTrees.csv",row.names=FALSE)
