#compdef hisat2_extract_snps_haplotypes_VCF.py

# Auto-generated with h2o

function _hisat2_extract_snps_haplotypes_VCF.py {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--reference-type[Reference type: gene, chromosome, and genome (default: genome)]' \
        '--inter-gap[Maximum distance for variants to be in the same haplotype (default: 30)]' \
        '--intra-gap[Break a haplotype into several haplotypes (default: 50)]' \
        '--non-rs[Allow SNP IDs not beginning with rs]' \
        '--genotype-vcf[VCF file name for genotyping (default: empty)]' \
        '--genotype-gene-list[A comma-separated list of genes to be genotyped (default: empty)]' \
        '--extra-files[Output extra files such as _backbone.fa and .ref]' \
        {-v,--verbose}'[also print some statistics to stderr]' \
        "*: :_files"

}

_hisat2_extract_snps_haplotypes_VCF.py "$@"

