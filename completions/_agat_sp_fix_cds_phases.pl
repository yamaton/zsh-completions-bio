#compdef agat_sp_fix_cds_phases.pl

# Auto-generated with h2o

function _agat_sp_fix_cds_phases.pl {
    _arguments \
        {-g,--gff,-ref}'[Input GTF/GFF file.]' \
        {-fa,--fasta}'[Input fasta file.]' \
        {-v,--verbose}'[Add verbosity.]' \
        {-o,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_fix_cds_phases.pl "$@"

