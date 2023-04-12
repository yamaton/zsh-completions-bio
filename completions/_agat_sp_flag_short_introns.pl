#compdef agat_sp_flag_short_introns.pl

# Auto-generated with h2o

function _agat_sp_flag_short_introns.pl {
    _arguments \
        {--gff,-f,--ref,-reffile}'[Input GTF/GFF file.]' \
        {--intron_size,-i}'[Minimum intron size, default 10. All genes with an intron < of this size will be flagged with the pseudo attribute (the value will be the size of the smallest intron found within the incriminated gene)]' \
        {--out,--output,-o}'[Output gff3 file where the result will be printed.]' \
        '-v[Bolean. Verbose for debugging purpose.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_flag_short_introns.pl "$@"

