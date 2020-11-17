# Create Data Directory if not exist
if (!file.exists("data")){
     dir.create("data")
}

# !!WARNING!! Large Data - must wait to finish all downloads.

# Download files from web
fileUrl2008 <- "http://download.inep.gov.br/microdados/Enade_Microdados/microdados_enade_2008.zip"
if(!file.exists("./data/microdados_enade_2008.zip")){
     download.file(fileUrl2008, destfile = "./data/microdados_enade_2008.zip")
}

fileUrl2009 <- "http://download.inep.gov.br/microdados/Enade_Microdados/microdados_enade_2009.zip"
if(!file.exists("./data/microdados_enade_2009.zip")){
     download.file(fileUrl2009, destfile = "./data/microdados_enade_2009.zip")
}

fileUrl2010 <- "http://download.inep.gov.br/microdados/Enade_Microdados/microdados_enade_2010.zip"
if(!file.exists("./data/microdados_enade_2010.zip")){
     download.file(fileUrl2010, destfile = "./data/microdados_enade_2010.zip")
}

fileUrl2011 <- "http://download.inep.gov.br/microdados/Enade_Microdados/microdados_enade_2011.zip"
if(!file.exists("./data/microdados_enade_2011.zip")){
     download.file(fileUrl2011, destfile = "./data/microdados_enade_2011.zip")
}

fileUrl2012 <- "http://download.inep.gov.br/microdados/Enade_Microdados/microdados_enade_2012.zip"
if(!file.exists("./data/microdados_enade_2012.zip")){
     download.file(fileUrl2012, destfile = "./data/microdados_enade_2012.zip")
}

fileUrl2013 <- "http://download.inep.gov.br/microdados/Enade_Microdados/microdados_enade_2013.zip"
if(!file.exists("./data/microdados_enade_2013.zip")){
     download.file(fileUrl2013, destfile = "./data/microdados_enade_2013.zip")
}

fileUrl2014 <- "http://download.inep.gov.br/microdados/Enade_Microdados/microdados_enade_2014.zip"
if(!file.exists("./data/microdados_enade_2014.zip")){
     download.file(fileUrl2014, destfile = "./data/microdados_enade_2014.zip")
}

fileUrl2015 <- "http://download.inep.gov.br/microdados/Enade_Microdados/microdados_enade_2015.zip"
if(!file.exists("./data/microdados_enade_2015.zip")){
     download.file(fileUrl2015, destfile = "./data/microdados_enade_2015.zip")
}

fileUrl2016 <- "http://download.inep.gov.br/microdados/Enade_Microdados/microdados_enade_2016_versao_28052018.zip"
if(!file.exists("./data/microdados_enade_2016_versao_28052018.zip")){
     download.file(fileUrl2016, destfile = "./data/microdados_enade_2016_versao_28052018.zip")
}

fileUrl2017 <- "http://download.inep.gov.br/microdados/Enade_Microdados/microdados_Enade_2017_portal_2018.10.09.zip"
if(!file.exists("./data/microdados_Enade_2017_portal_2018.10.09.zip")){
     download.file(fileUrl2017, destfile = "./data/microdados_Enade_2017_portal_2018.10.09.zip")
}

fileUrl2018 <- "http://download.inep.gov.br/microdados/Enade_Microdados/microdados_enade_2018.zip"
if(!file.exists("./data/microdados_enade_2018.zip")){
     download.file(fileUrl2018, destfile = "./data/microdados_enade_2018.zip")
}

# Load data from files
mData2008 <- read.csv(unz("./data/microdados_enade_2008.zip", "2.DADOS/microdados_enade_2008.csv"), header = TRUE, sep = ";")
mData2009 <- read.csv(unz("./data/microdados_enade_2009.zip", "2.DADOS/microdados_enade_2009.csv"), header = TRUE, sep = ";")

# Change read pattern
mData2010 <- read.csv(unz("./data/microdados_enade_2010.zip", "3.DADOS/MICRODADOS_ENADE_2010.txt"), header = TRUE, sep = ";")
mData2011 <- read.csv(unz("./data/microdados_enade_2011.zip", "3.DADOS/MICRODADOS_ENADE_2011.txt"), header = TRUE, sep = ";")
# The file name is correct according with the download zip file from ENADE Website. 
mData2012 <- read.csv(unz("./data/microdados_enade_2012.zip", "3.DADOS/MICRODADOS_ENADE_2011.txt"), header = TRUE, sep = ";")
mData2013 <- read.csv(unz("./data/microdados_enade_2013.zip", "3.DADOS/MICRODADOS_ENADE_2013.txt"), header = TRUE, sep = ";")
mData2014 <- read.csv(unz("./data/microdados_enade_2014.zip", "3.DADOS/MICRODADOS_ENADE_2014.txt"), header = TRUE, sep = ";")
mData2015 <- read.csv(unz("./data/microdados_enade_2015.zip", "3.DADOS/MICRODADOS_ENADE_2015.txt"), header = TRUE, sep = ";")
mData2016 <- read.csv(unz("./data/microdados_enade_2016_versao_28052018.zip", "microdados_enade2016/3.DADOS/MICRODADOS_ENADE_2016.txt"), header = TRUE, sep = ";")
mData2017 <- read.csv(unz("./data/microdados_Enade_2017_portal_2018.10.09.zip", "3.DADOS/MICRODADOS_ENADE_2017.txt"), header = TRUE, sep = ";")
mData2018 <- read.csv(unz("./data/microdados_enade_2018.zip", "2018/3.DADOS/microdados_enade_2018.txt"), header = TRUE, sep = ";")

