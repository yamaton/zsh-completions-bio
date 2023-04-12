#compdef agat_sq_count_attributes.pl

# Auto-generated with h2o

function _agat_sq_count_attributes.pl {
    _arguments \
        {--gff,-f}'[Input GTF/GFF file.]' \
        {--tag,--att}'[The name of the attribute that will be investigated.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sq_count_attributes.pl "$@"

