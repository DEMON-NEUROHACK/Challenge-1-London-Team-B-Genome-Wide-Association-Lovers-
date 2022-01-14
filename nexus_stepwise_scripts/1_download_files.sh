## download files on dnanexus in JupyterLab - paths may need to be updated!
dx download "LASI_DAD_Neurohack_Phenotype_full.csv"
dx download "LASI_DAD_Neurohack_health_pheno_full.csv"
dx download "LASI_DAD_Neurohack_genetic_PCs_unrelated_932.csv"

# download vcf files
dx download "Genotype data/Test data/*dose.vcf.gz" -r

# download info files
dx download "Genotype data/Info files/" -r

# download script to compile regenie
dx download file-G7Q0JgQ08Y80q3gXKp881P4f