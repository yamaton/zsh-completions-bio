#compdef agat_convert_sp_gff2tsv.pl

# Auto-generated with h2o

function _agat_convert_sp_gff2tsv.pl {
    _arguments \
        {--gff,-f}'[Input GTF/GFF file.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_convert_sp_gff2tsv.pl "$@"

