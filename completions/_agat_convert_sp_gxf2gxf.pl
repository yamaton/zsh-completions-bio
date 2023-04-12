#compdef agat_convert_sp_gxf2gxf.pl

# Auto-generated with h2o

function _agat_convert_sp_gxf2gxf.pl {
    _arguments \
        {-g,--gtf,--gff,--gxf}'[String - Input GTF/GFF file. Compressed file with .gz extension is accepted.]' \
        '-v[Integer - Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2 and 3 are increasing verbosity.]' \
        {-o,--output}'[String - Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Boolean - Display this helpful text.]' \
        "*: :_files"

}

_agat_convert_sp_gxf2gxf.pl "$@"

