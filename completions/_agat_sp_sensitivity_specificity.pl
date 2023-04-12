#compdef agat_sp_sensitivity_specificity.pl

# Auto-generated with h2o

function _agat_sp_sensitivity_specificity.pl {
    _arguments \
        '-gff1[Input GTF/GFF file 1.]' \
        '-gff2[Input GTF/GFF file 2.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        '-v[Verbose option for debug purposes.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_sensitivity_specificity.pl "$@"

