#### transform to plink on JupyterLab
## 12/01/2021
## Anna Furtjes

# install plink2
conda install -c bioconda plink2

# download script to fix vcf formatting
dx download file-G7Q5K1808Y84P92v82b5k231

# unzip vcf files
gunzip *.dose.vcf.gz

# fix column formatting
Rscript fix_vcf_formatting.R

#clean up
rm chr*

# run PLINK to get bed, fam and bim files
plink2 --vcf fixed_allchr.dose.vcf --make-bed --chr 1-22 --no-fid --out all_chromosomes


# upload files
# dx upload all_chromosomes*