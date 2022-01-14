# extract SNPs that have been genotyped only from the info files

## start from home
dx cd

# download info files
dx download "Genotype data/Info files/" -r
cd Info\ files/

# unzip files 
gunzip *.info.gz

mkdir step1
mkdir step2

# filter to SNPs for each genotype category
for chr in {1..22}; do
    awk '{ if( $8=="Genotyped" || $8=="Typed_Only" && $7>=0.4 ) print $1 }' chr${chr}.info | sed 1d > step1/chr${chr}_step1_exclude_imputed
    awk '{ if( $8=="Genotyped" || $8=="Imputed" && $7>=0.4 ) print $1 }' chr${chr}.info | sed 1d > step2/chr${chr}_step2_exclude_type_only
done

cd step1/
cat $(ls -t ) > ../step1_merged
cd ../step2
cat $(ls -t ) > ../step2_merged
cd ..

# upload files 
dx upload step1/*_step1_exclude_imputed --path /regenie_inputs/genotyped_snps/step1_genotyped_and_typed_only/seperate_chrs/
dx upload step1_merged --path /regenie_inputs/genotyped_snps/step1_genotyped_and_typed_only/
dx upload step2/*_step2_exclude_type_only --path /regenie_inputs/genotyped_snps/step2-imputed_and_genotyped/seperate_chrs/
dx upload step2_merged --path /regenie_inputs/genotyped_snps/step2-imputed_and_genotyped/

