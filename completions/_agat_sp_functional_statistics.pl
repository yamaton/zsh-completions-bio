#compdef agat_sp_functional_statistics.pl

# Auto-generated with h2o

function _agat_sp_functional_statistics.pl {
    _arguments \
        {--gff,-f}'[Input GTF/GFF file.]' \
        {--gs,-g}'[This option inform about the genome size in oder to compute more statistics. You can give the size in Nucleotide or directly the fasta file.]' \
        {--output,-o}'[File where will be written the result. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_functional_statistics.pl "$@"

