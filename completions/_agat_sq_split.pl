#compdef agat_sq_split.pl

# Auto-generated with h2o

function _agat_sq_split.pl {
    _arguments \
        {--gff,--file,--input}'[STRING: Input GTF/GFF file.]' \
        {-o,--output}'[STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sq_split.pl "$@"

