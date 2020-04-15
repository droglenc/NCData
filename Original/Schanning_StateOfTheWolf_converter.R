library(tidyverse)

setwd("C:/aaaWork/Web/GitHub/NCGraphing/modules/zdata/")
df <- readspss::read.spss("raw/Schanning_StateOfTheWolf.sav") %>%
  select(-VAR00001,-VAR00002)
lup <- read.csv("raw/Schanning_StateOfTheWOlf_LOOKUP.csv",stringsAsFactors=FALSE)

df$state[df$state==""] <- NA_character_
df$state <- factor(df$state)

df$zip_code[df$zip_code==1] <- NA_real_
df$zip_code <- factor(df$zip_code)

df$v19[df$v19=="99"] <- NA_character_
df$v19 <- factor(df$v19)

df$v26[df$v26=="9"] <- NA_character_
df$v26 <- factor(df$v9)

df$v27[df$v27=="0"] <- NA_character_
df$v27 <- factor(df$v27)

df$v50[df$v50 %in% c("0","99")] <- NA_character_
df$v50 <- factor(df$v50)

lvls_agree <- c("Strongly Disagree","Disagree","Neutral","Agree","Strongly Agree")
df$v56 <- factor(lvls_agree[as.numeric(df$v56)],levels=lvls_agree)
df$v57 <- factor(lvls_agree[as.numeric(df$v57)],levels=lvls_agree)
df$v58 <- factor(lvls_agree[as.numeric(df$v58)],levels=lvls_agree)
df$v59 <- factor(lvls_agree[as.numeric(df$v59)],levels=lvls_agree)
df$v60 <- factor(lvls_agree[as.numeric(df$v60)],levels=lvls_agree)
df$v61 <- factor(lvls_agree[as.numeric(df$v61)],levels=lvls_agree)
df$v62 <- factor(lvls_agree[as.numeric(df$v62)],levels=lvls_agree)
df$v63 <- factor(lvls_agree[as.numeric(df$v63)],levels=lvls_agree)
df$v64 <- factor(lvls_agree[as.numeric(df$v64)],levels=lvls_agree)
df$v65 <- factor(lvls_agree[as.numeric(df$v65)],levels=lvls_agree)
df$v66 <- factor(lvls_agree[as.numeric(df$v66)],levels=lvls_agree)
df$v67 <- factor(lvls_agree[as.numeric(df$v67)],levels=lvls_agree)
df$v68 <- factor(lvls_agree[as.numeric(df$v68)],levels=lvls_agree)
df$v69 <- factor(lvls_agree[as.numeric(df$v69)],levels=lvls_agree)
df$v70 <- factor(lvls_agree[as.numeric(df$v70)],levels=lvls_agree)
df$v71 <- factor(lvls_agree[as.numeric(df$v71)],levels=lvls_agree)
df$v72 <- factor(lvls_agree[as.numeric(df$v72)],levels=lvls_agree)
df$v73 <- factor(lvls_agree[as.numeric(df$v73)],levels=lvls_agree)
df$v74 <- factor(lvls_agree[as.numeric(df$v74)],levels=lvls_agree)
df$v75 <- factor(lvls_agree[as.numeric(df$v75)],levels=lvls_agree)
df$v76 <- factor(lvls_agree[as.numeric(df$v76)],levels=lvls_agree)
df$v77 <- factor(lvls_agree[as.numeric(df$v77)],levels=lvls_agree)
df$v78 <- factor(lvls_agree[as.numeric(df$v78)],levels=lvls_agree)
df$v79 <- factor(lvls_agree[as.numeric(df$v79)],levels=lvls_agree)
df$v80 <- factor(lvls_agree[as.numeric(df$v80)],levels=lvls_agree)
df$v81 <- factor(lvls_agree[as.numeric(df$v81)],levels=lvls_agree)
df$v82 <- factor(lvls_agree[as.numeric(df$v82)],levels=lvls_agree)
df$v83 <- factor(lvls_agree[as.numeric(df$v83)],levels=lvls_agree)
df$v84 <- factor(lvls_agree[as.numeric(df$v84)],levels=lvls_agree)
df$v85 <- factor(lvls_agree[as.numeric(df$v85)],levels=lvls_agree)
df$v86 <- factor(lvls_agree[as.numeric(df$v86)],levels=lvls_agree)
df$v87 <- factor(lvls_agree[as.numeric(df$v87)],levels=lvls_agree)

df$v100[df$v100 %in% c("2","3","4")] <- NA_character_
df$v100 <- factor(df$v100)

df$v101[df$v101=="0"] <- NA_character_
df$v101 <- factor(df$v101)

df$v102[df$v102 %in% c("2","3","4")] <- NA_character_
df$v102 <- factor(df$v102)

df$v103[df$v103=="0"] <- NA_character_
df$v103 <- factor(df$v103)

df$v105[df$v105=="5"] <- NA_character_
df$v105 <- factor(df$v105)

df$v106[df$v106=="4"] <- NA_character_
df$v106 <- factor(df$v106)

df$v118[df$v118=="5"] <- NA_character_
df$v118 <- factor(df$v118)

df$v119[df$v119 %in% c("4","5")] <- NA_character_
df$v119 <- factor(df$v119)

df$v121[df$v121 %in% c("2","3","4","5")] <- NA_character_
df$v121 <- factor(df$v121)

df$v129[df$v129=="0"] <- NA_character_
df$v129 <- factor(df$v129)

df$v130[df$v130=="0"] <- NA_character_
df$v130 <- factor(df$v130)

df$v143[df$v143 %in% c("2","3","4","5")] <- NA_character_
df$v143 <- factor(df$v143)

df$v145[df$v145=="0"] <- NA_character_
df$v145 <- factor(df$v145)

df$v147[df$v147 %in% c("2","3","4","5")] <- NA_character_
df$v147 <- factor(df$v147)

df$v163[df$v163=="0"] <- NA_character_
df$v163 <- factor(df$v163)

df$v164[df$v164=="0"] <- NA_character_
df$v164 <- factor(df$v164)

df$v165[df$v165=="99"] <- NA_character_
df$v165 <- factor(df$v165)

df$v166[df$v166 %in% c("2","3","4","5","6")] <- NA_character_
df$v166 <- factor(df$v166)

df$v168[df$v168=="99"] <- NA_character_
df$v168 <- factor(df$v168)

df$v169[df$v169=="9"] <- NA_character_
df$v169 <- factor(df$v169)

df$v174[df$v174 %in% c("0","99")] <- NA_character_
df$v174 <- factor(df$v174)

df$v175[df$v175=="99"] <- NA_character_
df$v175 <- factor(df$v175)

df$v176[df$v176 %in% c("2","3","4")] <- NA_character_
df$v176 <- factor(df$v176)

df$v200[df$v200=="0"] <- NA_character_
df$v200 <- factor(df$v200)

df$v202[df$v202 %in% c("2","3","4","5","6")] <- NA_character_
df$v202 <- factor(df$v202)

df$v209[df$v209=="99"] <- NA_character_
df$v209 <- factor(df$v209)

df$v210[df$v210=="0"] <- NA_character_
df$v210 <- factor(df$v210)

df$v212[df$v212 %in% c("2","3")] <- NA_character_
df$v212 <- factor(df$v212)

df$v216[df$v216=="99"] <- NA_character_
df$v216 <- factor(df$v216)

df$v217[df$v217=="99"] <- NA_character_
df$v217 <- factor(df$v217)

df$v221[df$v221=="9"] <- NA_character_
df$v221 <- factor(df$v221)

df$v222[df$v222=="9"] <- NA_character_
df$v222 <- factor(df$v222)

df$v223[df$v223=="9"] <- NA_character_
df$v223 <- factor(df$v223)

df$v224[df$v224=="9"] <- NA_character_
df$v224 <- factor(df$v224)

df$v225[df$v225=="9"] <- NA_character_
df$v225 <- factor(df$v225)

df$v226[df$v226=="9"] <- NA_character_
df$v226 <- factor(df$v226)

df$v227[df$v227=="9"] <- NA_character_
df$v227 <- factor(df$v227)

attributes(df) <- NULL
df <- as.data.frame(df)
names(df) <- lup$new
head(df)

df <- df %>% 
  mutate_if(is.factor,str_replace,pattern="Concerened",replacement="Concerned")

write.csv(df,"StateOfWolf.csv",quote=TRUE,row.names=FALSE)
