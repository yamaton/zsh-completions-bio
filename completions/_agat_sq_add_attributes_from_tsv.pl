#compdef agat_sq_add_attributes_from_tsv.pl

# Auto-generated with h2o

function _agat_sq_add_attributes_from_tsv.pl {
    _arguments \
        '--gff[STRING: Input GTF/GFF file.]' \
        '--tsv[STRING: Input tsv file]' \
        '--csv[BOLEAN: Inform the script that the tsv input file is actually a csv (coma-separated).]' \
        {-v,--verbose}'[BOLEAN: Add verbosity]' \
        {-o,--output}'[STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sq_add_attributes_from_tsv.pl "$@"

