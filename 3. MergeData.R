
#=======================================================================================================================================================
#
# 'Just as reference'
#
#library(sf)

## Location File ##
#location_file <- "https://geoftp.ibge.gov.br/organizacao_do_territorio/estrutura_territorial/localidades/Shapefile_SHP/BR_Localidades_2010_v1.dbf"

#if(!file.exists("./data/BR_Localidades_2010_v1.dbf")){
#     download.file(location_file, destfile = "./data/BR_Localidades_2010_v1.dbf")
#}
#if(!exists("locations")){
#     loadLocations <- st_read("./data/BR_Localidades_2010_v1.dbf")
#}

## Get Only interested Columns
#filterLoc <- loadLocations %>% filter_("NM_DISTRIT == NM_MUNICIP") 
#locations <- filterLoc[,c("CD_GEOCODM","NM_MUNICIP","NM_UF","LONG", "LAT", "ALT")]
#colnames(locations) <- c("CO_MUNIC_CURSO","MUNICIPIO","UF","LONG","LAT","ALT")
#saveRDS(locations, file="ref_cities_locations.rds")

### NOTE
### For some reason load data using download and load file corrupt data.
### It was download manually and after that cleaned and saved as cities_locations.rds
#======================================================================================================================================================


## Merge Cities - City Name, State, Lat, Long and Alt
cities <- readRDS("ref_cities_locations.rds")
cities$CO_MUNIC_CURSO <- as.numeric(cities$CO_MUNIC_CURSO)

mData$MUNICIPIO <- cities$MUNICIPIO[match(mData$CO_MUNIC_CURSO,cities$CO_MUNIC_CURSO)]
mData$UF <- cities$UF[match(mData$CO_MUNIC_CURSO,cities$CO_MUNIC_CURSO)]
mData$LONG <- cities$LONG[match(mData$CO_MUNIC_CURSO,cities$CO_MUNIC_CURSO)]
mData$LAT <- cities$LAT[match(mData$CO_MUNIC_CURSO,cities$CO_MUNIC_CURSO)]
mData$ALT <- cities$ALT[match(mData$CO_MUNIC_CURSO,cities$CO_MUNIC_CURSO)]

## Merge Courses General Data (codes to understandable info)

categ <- read.csv("ref_categoria.csv", sep = ";", header = TRUE)
mData$CATEGAD <- categ$CATEGORIA[match(mData$CO_CATEGAD,categ$COD_CATEGAD)]

grupo <- read.csv("ref_grupo.csv", sep = ";", header = TRUE)
mData$GRUPO <- grupo$GRUPO[match(mData$CO_GRUPO,grupo$CO_GRUPO)]

organizacao <- read.csv("ref_organizacao_academica.csv", sep = ";", header = TRUE)
mData$ORGANIZACAO <- organizacao$ORGANIZACAO_ACADEMICA[match(mData$CO_ORGACAD,organizacao$CO_ORGACAD)]

regiao <- read.csv("ref_regiao.csv", sep = ";", header = TRUE)
mData$REGIAO_CURSO <- regiao$REGIAO_CURSO[match(mData$CO_REGIAO_CURSO,regiao$CO_REGIAO_CURSO)]

cursos <- read_xls("ref_tabela_de_cursos.xls")
mData$CURSO <- cursos$`Nome do Curso`[match(mData$CO_CURSO,cursos$`Código do Curso`)]


## Get only Interested Variables
df <- subset(mData, select = -c(CO_CATEGAD,CO_ORGACAD,CO_GRUPO,CO_CURSO,CO_MUNIC_CURSO, CO_UF_CURSO, CO_REGIAO_CURSO))

df$UF <- as.factor(df$UF)


## Generate Cleaned Dataset.
saveRDS(df,"enade_2008_2018.rds")