#!/usr/bin/env nextflow

params.gz  = '*.dose.vcf.gz'
params.unzipped = 'unzipped'
params.vcf = 'unzipped/*.dose.vcf'
zip_ch = Channel.fromPath(params.gz)
vcf_ch = Channel.fromPath(params.vcf).flatten()


process gzip {
    publishDir = params.unzipped

    input:
    file genomeReads from zip_ch

    output:
    path("${genomeReads.baseName}") into unzip_ch

    script:
    """
    gunzip -f $genomeReads
    """

}

process unify_vcf {
    publishDir = params.unzipped

    input:
    val x from unzip_ch.flatten().flatten()

    output:
    path("all_merged.vcf") into merged_ch

    """
    cat ../../../unzipped/*.vcf
    """   
}
