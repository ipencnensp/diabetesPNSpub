# Usando o pacote PNSIBGE para pegar as últimas versões da PNS.
# https://cran.r-project.org/web/packages/PNSIBGE/index.html
# https://www.ibge.gov.br/estatisticas/sociais/saude/29540-2013-pesquisa-nacional-de-saude.html
# https://epirhandbook.com/en/index.html

library(PNSIBGE)
library(survey)
library(srvyr)
library(tidyverse)

savedirt <- tempdir()

pns2019.svy <- get_pns(year=2019, selected=TRUE, labels=TRUE, 
                       deflator=TRUE, design=TRUE, savedir=savedirt)
pns2019.udata <- get_pns(year=2019, selected = TRUE, labels = FALSE, 
                             deflator = TRUE, design = FALSE, savedir=savedirt)

#saveRDS(pns2019.svy, "data/PNSIBGE_Rpkg/pns2019svy.get_pns20230505.RDS")
#saveRDS(pns2019.udata, "data/PNSIBGE_Rpkg/pns2019microdata_get_pns20230505.RDS")
write_csv(pns2019.udata, "data/PNSIBGE_Rpkg/pns2019microdata_get_pns20230505.csv")

pns2013.svy <- get_pns(year=2013, selected=TRUE, labels=TRUE, 
                       deflator=TRUE, design=TRUE, savedir=savedirt)

pns2013.udata <- get_pns(year=2013, selected = TRUE, labels = FALSE, 
                         deflator = TRUE, design = FALSE, savedir=savedirt)

#saveRDS(pns2013.svy, "data/PNSIBGE_Rpkg/pns2013svy.get_pns20230505.RDS")
#saveRDS(pns2013.udata, "data/PNSIBGE_Rpkg/pns2013microdata_get_pns20230505.RDS")
write_csv(pns2013.udata, "data/PNSIBGE_Rpkg/pns2013microdata_get_pns20230505.csv")



