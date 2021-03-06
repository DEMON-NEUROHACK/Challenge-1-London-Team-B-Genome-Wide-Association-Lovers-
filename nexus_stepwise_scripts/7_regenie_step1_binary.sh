regenie \
    --step 1 \
    --force-step1 \
    --bed all_chromosomes \
    --extract step1_merged \
    --phenoFile binary_phenotypes_regenie.tsv \
    --keep all_chromosomes.fam \
    --covarFile covariates_fid0.tsv \
    --catCovarList sex,education \
    --maxCatLevels 2 \
    --bsize 50 \
    --bt \
    --lowmem \
    --lowmem-prefix tmp \
    --verbose \
    --out fit_out_bin
