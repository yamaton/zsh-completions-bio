#compdef agat_sp_list_short_introns.pl

# Auto-generated with h2o

function _agat_sp_list_short_introns.pl {
    _arguments \
        {--gff,-f,--ref,-reffile}'[Input GTF/GFF file.]' \
        {--size,-s}'[Minimum intron size accepted in nucleotide. All introns under this size will be reported. Default value = 10.]' \
        {--out,--output,-o}'[Output gff3 file where the gene incriminated will be write.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_list_short_introns.pl "$@"

