## install regenie from source
echo "This should compile bgen and regenie from source"


## first install BGEN
# get it
wget http://code.enkre.net/bgen/tarball/release/bgen.tgz
tar zxvf bgen.tgz
mv bgen.tgz bgen
cd bgen
# compile it
./waf configure
./waf

# test it
#./build/test/unit/test_bgen
#./build/apps/bgenix -g example/example.16bits.bgen -list

## exit bgen dir
cd ..

## get regenie source code
wget https://github.com/rgcgithub/regenie/archive/refs/tags/v2.2.4.tar.gz
tar -xvzf v2.2.4.tar.gz
rm v2.2.4.tar.gz
cd regenie-2.2.4
## BGEN_PATH should be set to where bgen was downloaded to, for the jupyterlab on dnanexus this is:
## BGEN_PATH     = /opt/notebooks/bgen
## then make regenie
make BGEN_PATH=/opt/notebooks/bgen
## copy exe to bin
cp regenie /usr/local/bin/
## exit regenie dir
cd ..

