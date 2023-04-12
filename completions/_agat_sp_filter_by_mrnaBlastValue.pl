#compdef agat_sp_filter_by_mrnaBlastValue.pl

# Auto-generated with h2o

function _agat_sp_filter_by_mrnaBlastValue.pl {
    _arguments \
        '--gff[Input GTF/GFF file.]' \
        '--blast[The list of the all-vs-all blast file (outfmt 6, blastp)]' \
        '--outfile[The name of the output file. By default the output is the standard output.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_filter_by_mrnaBlastValue.pl "$@"

