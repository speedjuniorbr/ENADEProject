library(ggplot2)
library(knitr)
library(readxl)
library(dplyr)
library(kableExtra)
library(sf)

### Filter and get interest variables ###
mData2008Filter <- subset(mData2008, tp_pres == 555 | tp_pr_ger == 555 | tp_pr_ob_fg == 555 | tp_pr_di_fg == 555 | tp_pr_ob_ce == 555, select = c(nu_ano ,cd_catad, cd_orgac, co_grupo, co_curso, co_regiao_habil, co_uf_habil, co_munic_habil, nu_idade, tp_sexo, ano_fim_2g, ano_in_gra, QE_I13, QE_I14, nt_fg, nt_ce, nt_ger))
mData2009Filter <- subset(mData2009, tp_pres == 555 | tp_pr_ger == 555 | tp_pr_ob_fg == 555 | tp_pr_di_fg == 555 | tp_pr_ob_ce == 555, select = c(nu_ano ,cd_catad, cd_orgac, co_grupo, co_curso, co_regiao_habil, co_uf_habil, co_munic_habil, nu_idade, tp_sexo, ano_fim_2g, ano_in_gra, QE_I13, QE_I14, nt_fg, nt_ce, nt_ger))

mData2010Filter <- subset(mData2010, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO, CO_CATEGAD, CO_ORGACAD, CO_GRUPO, CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, CO_MUNIC_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2011Filter <- subset(mData2011, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO, CO_CATEGAD, CO_ORGACAD, CO_GRUPO, CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, CO_MUNIC_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2012Filter <- subset(mData2012, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO, CO_CATEGAD, CO_ORGACAD, CO_GRUPO, CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, CO_MUNIC_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2013Filter <- subset(mData2013, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO, CO_CATEGAD, CO_ORGACAD, CO_GRUPO, CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, CO_MUNIC_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2014Filter <- subset(mData2014, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO, CO_CATEGAD, CO_ORGACAD, CO_GRUPO, CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, CO_MUNIC_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2015Filter <- subset(mData2015, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO, CO_CATEGAD, CO_ORGACAD, CO_GRUPO, CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, CO_MUNIC_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2016Filter <- subset(mData2016, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO, CO_CATEGAD, CO_ORGACAD, CO_GRUPO, CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, CO_MUNIC_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))


mData2017Filter <- subset(mData2017, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO, CO_CATEGAD, CO_ORGACAD, CO_GRUPO, CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, CO_MUNIC_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_EM, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2018Filter <- subset(mData2018, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO, CO_CATEGAD, CO_ORGACAD, CO_GRUPO, CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, CO_MUNIC_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_EM, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))

### Binding rows for a UNIQUE DataSet ###
mData <- rbind(mData2008Filter, mData2009Filter)

### Change variable names according with year variables change from dataset (2010 to 2016) ###
colnames(mData) <- c("NU_ANO", "CO_CATEGAD", "CO_ORGACAD", "CO_GRUPO", "CO_CURSO", "CO_REGIAO_CURSO", "CO_UF_CURSO", "CO_MUNIC_CURSO", "NU_IDADE", "TP_SEXO", "ANO_FIM_2G", "ANO_IN_GRAD", "QE_I13", "QE_I14", "NT_FG", "NT_CE", "NT_GER")
mData <- rbind(mData, mData2010Filter)
mData <- rbind(mData, mData2011Filter)
mData <- rbind(mData, mData2012Filter)
mData <- rbind(mData, mData2013Filter)
mData <- rbind(mData, mData2014Filter)
mData <- rbind(mData, mData2015Filter)
mData <- rbind(mData, mData2016Filter)

### Change variable names according with year variables change from dataset (2017 to 2018) ###
colnames(mData) <- c("NU_ANO", "CO_CATEGAD", "CO_ORGACAD", "CO_GRUPO", "CO_CURSO", "CO_REGIAO_CURSO", "CO_UF_CURSO", "CO_MUNIC_CURSO", "NU_IDADE", "TP_SEXO", "ANO_FIM_EM", "ANO_IN_GRAD", "QE_I13", "QE_I14", "NT_FG", "NT_CE", "NT_GER")
mData <- rbind(mData, mData2017Filter)
mData <- rbind(mData, mData2018Filter)

### Adjust Data ###
mData$NU_ANO <- as.factor(mData$NU_ANO)
mData$CO_REGIAO_CURSO <- as.factor(mData$CO_REGIAO_CURSO)
mData$NT_FG <- as.numeric(sub(",", ".", mData$NT_FG, fixed = TRUE))
mData$NT_CE <- as.numeric(sub(",", ".", mData$NT_CE, fixed = TRUE))
mData$NT_GER <- as.numeric(sub(",", ".", mData$NT_GER, fixed = TRUE))
mData$CO_MUNIC_CURSO <- as.numeric(mData$CO_MUNIC_CURSO)
mData$CO_CURSO <- as.numeric(mData$CO_CURSO)

mData$TP_SEXO[mData$TP_SEXO == "1"] <- "M"
mData$TP_SEXO[mData$TP_SEXO == "2"] <- "F"
mData$TP_SEXO <- as.factor(mData$TP_SEXO)

mData$QE_I13 <- as.factor(mData$QE_I13)
mData$QE_I14 <- as.factor(mData$QE_I14)

### Remove NA's
mData <- na.omit(mData)

### Remove Duplicated data (if exist) ###
mData <- unique(mData)

### Clean Memory ###
rm(mData2008, mData2009, mData2010, mData2011, mData2012, mData2013, mData2014, mData2015, mData2016, mData2017, mData2018)
rm(mData2008Filter, mData2009Filter, mData2010Filter, mData2011Filter, mData2012Filter, mData2013Filter, mData2014Filter, mData2015Filter, mData2016Filter, mData2017Filter, mData2018Filter)

