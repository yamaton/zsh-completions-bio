#compdef agat_sp_alignment_output_style.pl

# Auto-generated with h2o

function _agat_sp_alignment_output_style.pl {
    _arguments \
        {-g,--gff,-ref}'[Input GTF/GFF file.]' \
        '-v[Verbose option to see the warning messages when parsing the gff file.]' \
        {-o,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_alignment_output_style.pl "$@"

