# Introduction

Instructions to reproduce all analyses in the paper "Using Brazilian Health Surveys 2013 and 2019 for a Nationwide Diabetes Risk Assessment," by Marcelo Moreira da Silva and Mário Olímpio de Menezes. 

We apologize in advance for some Portuguese content in some files; most of these small texts should be easily understandable by the context.

## Data download

The file `pegaPNS.R` contains the necessary steps to download PNS 2013 and 2019 to the "data" directory. Prior to running the script, the path "data/PNSIBGE_Rpkg" must exist in the project directory.

It is also necessary to download the shape file used to create Brazil's regional map. The zip file containing the shapefile must be downloaded from the IBGE website. 

At the time of writing, the URL for download was: https://geoftp.ibge.gov.br/organizacao_do_territorio/malhas_territoriais/malhas_municipais/municipio_2022/brasil/br/br_regioes_2022.zip. 

This URL corresponds to the website path: https://www.ibge.gov.br/geociencias/downloads-geociencias.html -> organizacao_do_territorio -> malhas_territoriais -> malhas_municipais -> municipio_2022 -> brasil -> br. 

The zip file must be extracted so that the shapefile is located at the path "data/IBGE/malhas_territoriais/Brasil/BR_Regioes_2022" in the project directory.

## Intermediate data

Prior to processing the main paper file "CienciaESaudeColetiva.qmd", the following intermediate data must be created by running each specified RMarkdown file:

* pns_analysis2013.Rmd
   - distribuicaoNAsrisco2013_20230505.rds
   - pontos_2013_20230505.rds
* pns_analysis2019_v2.Rmd
   - distribuicaoNAsrisco2019_20230505.rds
   - pontos_2019_20230505.rds
* reproducao_artigo_prev2013x2019.Rmd
   - diabetes2013_gt_20230505.rds
   - diabetes2019_gt_20230505.rds
   - diab1319_20230505.rds

## Final article

After creating the intermediate data above and downloading the shape file, the main article "CienciaESaudeColetiva.qmd" can be processed.

If the option for "Word" output is chosen, a `docx` file will be generated. However, the file is not ready for publishing yet, but it is the closest possible version that can be produced from the Quarto source. Only the Abstract (in English) will be present, while the Portuguese "Resumo"" must be copied and pasted from the `.qmd` file.

On the other hand, if the option for "PDF" output is chosen, a nicely formatted `pdf` file will be generated. However, the output file will miss some fields such as the author's affiliation, etc. 

Other outputs were used only for testing purposes.
