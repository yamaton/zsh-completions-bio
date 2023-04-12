#compdef agat_sq_filter_feature_from_fasta.pl

# Auto-generated with h2o

function _agat_sq_filter_feature_from_fasta.pl {
    _arguments \
        {--gff,--file,--input}'[STRING: Input GTF/GFF file.]' \
        {-f,--fasta}'[STRING: fasta file.]' \
        {-v,--verbose}'[For verbosity]' \
        {-o,--output}'[STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sq_filter_feature_from_fasta.pl "$@"

