#compdef agat_sp_filter_gene_by_intron_numbers.pl

# Auto-generated with h2o

function _agat_sp_filter_gene_by_intron_numbers.pl {
    _arguments \
        {-f,--reffile,--gff,-ref}'[Input GFF3 file that will be read]' \
        {-n,--nb,--number}'[Integer - Number of introns \[Default 0\]]' \
        {-o,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        '-v[Verbose option for debugging purpose.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_filter_gene_by_intron_numbers.pl "$@"

