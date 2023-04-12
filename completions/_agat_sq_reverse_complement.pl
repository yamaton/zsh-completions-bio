#compdef agat_sq_reverse_complement.pl

# Auto-generated with h2o

function _agat_sq_reverse_complement.pl {
    _arguments \
        {--gff,--file,--input}'[STRING: Input GTF/GFF file.]' \
        {-f,--fasta}'[STRING: fasta file.]' \
        {-v,--verbose}'[BOOLEAN: For verbosity.]' \
        {-o,--output}'[STRING: Output file. If no output file is specified, the output will be written to STDOUT.]' \
        {--help,-h}'[BOOLEAN: Display this helpful text.]' \
        "*: :_files"

}

_agat_sq_reverse_complement.pl "$@"

