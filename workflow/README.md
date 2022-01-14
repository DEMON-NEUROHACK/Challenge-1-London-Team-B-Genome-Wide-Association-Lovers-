The first 2 steps of the workflow have been integrated as a .nf script.<br>
Due to time limitations, the other steps remain in scripts in the __templates__ directory and still need to be integrated. <br><br>

### NextFlow Syntax<br>

To run nextflow scripts:<br>
```nextflow run <path_to_nf_script>```<br>

### Workflow Creation - Steps<br>
 * Environment Setup (incl. all required installations) ✓
 * find required Docker images:
    * bioconda ✓
    * regenie ✓
    * vcftools
    * NOTE: currently unused, as current NF scripts are in rudimentary POC phase and all necessary software was installed locally
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->  after all workflow steps have been introduced and are working in POC version, software will be imported via Docker image by modifying .config file and using ```--with-docker``` param
 * setup test script to ensure correct NF setup ✓
 * access files from DNA Nexus ✓
 * create WGAS workflow script [2/12 steps]


### Improvements to be made<br>
 * use docker with NF scripts in order to avoid having to install and maintain software locally
 * use vcftools instead of bash command to merge .vcf files (process 2 in .nf script)
 * .nf file version 1 needs to be refactored in order for process 2 to run after process 1 (asw oppossed to run in parallel, as otherwise an error can be thrown)
