#compdef agat_sp_fix_overlaping_genes.pl

# Auto-generated with h2o

function _agat_sp_fix_overlaping_genes.pl {
    _arguments \
        {-f,--file,--gff3,--gff}'[Input GTF/GFF file.]' \
        {-m,--merge}'[Bolean: Merge/add the attributes of gene feature that are merged (except ID and Parent).]' \
        {-o,--out,--output,--outfile}'[Output file. If none given, will be display in standard output.]' \
        {-v,--verbose}'[BOLEAN: Add verbosity.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_fix_overlaping_genes.pl "$@"

