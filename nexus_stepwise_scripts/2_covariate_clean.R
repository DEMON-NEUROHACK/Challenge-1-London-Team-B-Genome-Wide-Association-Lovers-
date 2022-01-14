## generate covariate files

## load packages
packages <- c("dplyr", "readr")
## check if install
new_pkg <- packages[!(packages %in% installed.packages())]
## install missing pkgs
install.packages(new_pkg)
## load
lapply(packages, require, character.only = TRUE)

## read in source files
ptype <- read.csv("LASI_DAD_Neurohack_Phenotype_full.csv")
pcs <- read.csv("LASI_DAD_Neurohack_genetic_PCs_unrelated_932.csv")

## ensure order of rows is the same
ptype <- dplyr::arrange(ptype, subjectID)
pcs <- dplyr::arrange(pcs, subjectID)
head(ptype, 10)
head(pcs, 10)

## convert cols to numeric
ptype$ragender <- as.numeric(substr(ptype$ragender, 1, 1))
ptype$raeducl <- as.numeric(substr(ptype$raeducl, 1, 1))


covariate_df <- data.frame("FID" = ptype$subjectID, "IID" = pcs$subjectID,
                           "age" = ptype$r1agey, "sex" = ptype$ragender,
                          "education" = ptype$raeducl, "genetic_pc1" = pcs$EV1,
                          "genetic_pc2" = pcs$EV2, "genetic_pc3" = pcs$EV3,
                          "genetic_pc4" = pcs$EV4, "genetic_pc5" = pcs$EV5,
                          "genetic_pc6" = pcs$EV6, "genetic_pc7" = pcs$EV7,
                          "genetic_pc8" = pcs$EV8, "genetic_pc9" = pcs$EV9,
                          "genetic_pc10" = pcs$EV10)
head(covariate_df)
cov_df_fid0 <- covariate_df
cov_df_fid0$FID <- 0



## save files
write_tsv(covariate_df, "covariates.tsv")
write_tsv(cov_df_fid0, "covariates_fid0.tsv")