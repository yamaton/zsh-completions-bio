#compdef polca.sh

# Auto-generated with h2o

function _polca.sh {
    _arguments \
        '-a[Assembly contigs or scaffolds]' \
        '-r[can use any number of fastq files, polishing reads must be in fastq format!]' \
        '-t[number of threads (default:1)]' \
        '-n[(optional) do not polish, just create vcf file, evaluate the assembly and exit]' \
        '-m[(optional) memory per thread to use in samtools sort, set to 2G or more for large genomes]' \
        "*: :_files"

}

_polca.sh "$@"

