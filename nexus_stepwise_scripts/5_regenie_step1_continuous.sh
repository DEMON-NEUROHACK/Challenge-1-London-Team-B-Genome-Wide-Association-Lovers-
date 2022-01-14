#### run regenie on JupyterLab
bash install_regenie_from_source.sh

# download files prepared for regenie
#dx cd

#dx download "project-G7KBz1j08Y8PJk57Gfg1Jf3Z:/regenie_inputs/continuous_phenotype_regenie.tsv"

#dx download "regenie_inputs/covariates_fid0.tsv"


# load bed file
#dx download "regenie_inputs/all_chromosomes.bed" -r

# load fam file
#dx download "regenie_inputs/all_chromosomes.fam" -r

# load bim file
#dx download "regenie_inputs/all_chromosomes.bim" -r

# load SNP list of genotyped SNPs for this chromosome
#dx download "project-G7KBz1j08Y8PJk57Gfg1Jf3Z:/regenie_inputs/genotyped_snps/step1_genotyped_and_typed_only/step1_merged"


regenie \
    --step 1 \
    --force-step1 \
    --bed all_chromosomes \
    --extract step1_merged \
    --phenoFile continuous_phenotype_regenie.tsv \
    --keep all_chromosomes.fam \
    --covarFile covariates_fid0.tsv \
    --catCovarList sex,education \
    --maxCatLevels 2 \
    --bsize 50 \
    --lowmem \
    --lowmem-prefix tmp \
    --verbose \
    --out fit_out_cont
