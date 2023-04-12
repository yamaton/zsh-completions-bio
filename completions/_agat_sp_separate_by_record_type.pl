#compdef agat_sp_separate_by_record_type.pl

# Auto-generated with h2o

function _agat_sp_separate_by_record_type.pl {
    _arguments \
        {-g,--gff,-ref}'[Input GTF/GFF file.]' \
        {-o,--output}'[Output folder. If no output folder provided, the default name will be <split_result>.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_separate_by_record_type.pl "$@"

