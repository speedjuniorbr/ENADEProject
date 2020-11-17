# Filter and get interest variables
mData2008Filter <- subset(mData2008, tp_pres == 555 | tp_pr_ger == 555 | tp_pr_ob_fg == 555 | tp_pr_di_fg == 555 | tp_pr_ob_ce == 555, select = c(nu_ano,co_grupo,co_subarea,co_regiao_habil,co_uf_habil,nu_idade,tp_sexo,ano_fim_2g,ano_in_gra,QE_I13,QE_I14,nt_fg,nt_ce,nt_ger))
mData2009Filter <- subset(mData2009, tp_pres == 555 | tp_pr_ger == 555 | tp_pr_ob_fg == 555 | tp_pr_di_fg == 555 | tp_pr_ob_ce == 555, select = c(nu_ano,co_grupo,co_subarea,co_regiao_habil,co_uf_habil,nu_idade,tp_sexo,ano_fim_2g,ano_in_gra,QE_I13,QE_I14,nt_fg,nt_ce,nt_ger))
mData2010Filter <- subset(mData2010, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO,CO_GRUPO,CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2011Filter <- subset(mData2011, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO,CO_GRUPO,CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2012Filter <- subset(mData2012, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO,CO_GRUPO,CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2013Filter <- subset(mData2013, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO,CO_GRUPO,CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2014Filter <- subset(mData2014, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO,CO_GRUPO,CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2015Filter <- subset(mData2015, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO,CO_GRUPO,CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2016Filter <- subset(mData2016, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO,CO_GRUPO,CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_2G, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2017Filter <- subset(mData2017, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO,CO_GRUPO,CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_EM, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))
mData2018Filter <- subset(mData2018, TP_PRES == 555 | TP_PR_GER == 555 | TP_PR_OB_FG == 555 | TP_PR_DI_FG == 555 | TP_PR_OB_CE == 555, select = c(NU_ANO,CO_GRUPO,CO_CURSO, CO_REGIAO_CURSO, CO_UF_CURSO, NU_IDADE, TP_SEXO, ANO_FIM_EM, ANO_IN_GRAD, QE_I13, QE_I14, NT_FG, NT_CE, NT_GER))

# Binding rows for a UNIQUE DataSet
mData <- rbind(mData2008Filter, mData2009Filter)

#Change variable names according with year variables change from dataset (2010 to 2016)
colnames(mData) <- c("NU_ANO","CO_GRUPO","CO_CURSO","CO_REGIAO_CURSO","CO_UF_CURSO","NU_IDADE","TP_SEXO","ANO_FIM_2G","ANO_IN_GRAD","QE_I13", "QE_I14", "NT_FG", "NT_CE", "NT_GER")
mData <- rbind(mData, mData2010Filter)
mData <- rbind(mData, mData2011Filter)
mData <- rbind(mData, mData2012Filter)
mData <- rbind(mData, mData2013Filter)
mData <- rbind(mData, mData2014Filter)
mData <- rbind(mData, mData2015Filter)
mData <- rbind(mData, mData2016Filter)

#Change variable names according with year variables change from dataset (2017 to 2018)
colnames(mData) <- c("NU_ANO","CO_GRUPO","CO_CURSO","CO_REGIAO_CURSO","CO_UF_CURSO","NU_IDADE","TP_SEXO","ANO_FIM_EM","ANO_IN_GRAD","QE_I13","QE_I14","NT_FG","NT_CE","NT_GER")
mData <- rbind(mData, mData2017Filter)
mData <- rbind(mData, mData2018Filter)

### Adjust Data to be plot ###
mData$NU_ANO <- as.factor(mData$NU_ANO)
mData$CO_REGIAO_CURSO <- as.factor(mData$CO_REGIAO_CURSO)

mData$NT_FG <- as.numeric(sub(",", ".", mData$NT_FG, fixed = TRUE))
mData$NT_CE <- as.numeric(sub(",", ".", mData$NT_CE, fixed = TRUE))
mData$NT_GER <- as.numeric(sub(",", ".", mData$NT_GER, fixed = TRUE))

                                           

