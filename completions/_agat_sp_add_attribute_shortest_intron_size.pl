#compdef agat_sp_add_attribute_shortest_intron_size.pl

# Auto-generated with h2o

function _agat_sp_add_attribute_shortest_intron_size.pl {
    _arguments \
        {--gff,-f,--ref,-reffile}'[STRING: Input GTF/GFF file.]' \
        {--out,--output,-o}'[STRING: Output gff3 file where the result will be printed.]' \
        '-v[BOLEAN: Verbose for debugging purpose.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_add_attribute_shortest_intron_size.pl "$@"

