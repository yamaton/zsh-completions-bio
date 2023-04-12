#compdef agat_sp_Prokka_inferNameFromAttributes.pl

# Auto-generated with h2o

function _agat_sp_Prokka_inferNameFromAttributes.pl {
    _arguments \
        {--gff,-f}'[Input GTF/GFF file.]' \
        '--force[If Name attribute already exists, they will be replaced if a new one is found]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_Prokka_inferNameFromAttributes.pl "$@"

