#compdef agat_sq_manage_IDs.pl

# Auto-generated with h2o

function _agat_sq_manage_IDs.pl {
    _arguments \
        {--gff,--file,--input}'[STRING: Input GTF/GFF file.]' \
        '--of[Output format, if no ouput format is given, the same as the input one detected will be used. Otherwise you can force to have a gff version 1 or 2 or 3 by giving the corresponding number.]' \
        {-o,--output}'[STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sq_manage_IDs.pl "$@"

