# extract SNPs that have been genotyped only from the info files

## start from home
dx cd


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
## copy file to initial dir
cp step1_merged ../../
## move to step 2
cd ../step2
cat $(ls -t ) > ../step2_merged
## copy file to initial dir
cp step2_merged ../../
## return to initial dir
cd ../../