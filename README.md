# Challenge-1-London-Team-B aka "Genome-Wide Association Lovers"

### Team Members & Contributions

* Anna Elisabeth Fürtjes (London) - Genetic Quality Control, Formatting genetic files for analysis, Creation & testing of Regenie scripts (Stages 1 & 2); advising team members on GWAS methods
* Mateus Harrington (Cardiff) - Becoming our go-to man on how to use the DNA Nexus platform; creation of covariate file; creating snplist files; setting up Regenie to work via DNA Nexus
* Isy Foote (London) - Advising team members on how to integrate our work into the dementia field meaningfully; creation of phenotype file; troubleshooting errors & queries to support teammates; creation of presentation  
* David Enoma (Nigeria) - Technical and Scientific support, brainstorming & Creating presentation; 
* Gabriela Paulus (NYC) - Setting up our GitHub page; worked on integrating our workflow as a NextFlow pipeline

All team members helped to shape our overall aims and plan.

### Project Overview

Our workflows are being created as NextFlow pipelines.<br>
Benefits of using NextFlow are:<br>
 * increased scalability
 * increased mobility
 * better reproducibility
 * integration with Docker AND Singularity possible ( --> running on servers using Singularity is not an issue, as opposed to many other workflow managers)
 * workflow itself can be dockerized
 * workflow can pull docker images in order to use software instead of requiring local installations and maintanance
 * modularity
<br><br>

### Repo Structure<br>
 * __templates dir__: contains files with original code that is used in .nf (NextFlow) scripts 
 * __workflow dir__ : contains .nf scripts
    * NOTE: due to time reasons the .nf files are uncomplete and additional code from __templates__ needs to be migrated into .nf files to be fully functional
    * current status: all zipped .vcf files in folder are unzipped and all unzipped files are merged into one .vcf file containing all information in an automated manner<br>

<br>

### NextFlow Environment Setup<br>
In order to use NextFlow from the DNA nexus Cloud Station, the following steps were taken (_see history.txt for detailed commands_):
 * NextFlow Installation
      * requires Java installation
 * Docker Installation
 * Data Download


<br>
