#!/usr/bin/env nextflow

params.gz  = '*.dose.vcf.gz'
params.unzipped = 'unzipped'
params.vcf = 'unzipped/*.dose.vcf'
zip_ch = Channel.fromPath(params.gz)

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
