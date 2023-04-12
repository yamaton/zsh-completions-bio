#compdef agat_sp_filter_gene_by_length.pl

# Auto-generated with h2o

function _agat_sp_filter_gene_by_length.pl {
    _arguments \
        {-f,--reffile,--gff,-ref}'[Input GFF3 file that will be read]' \
        {-s,--size}'[Integer - Gene size in pb \[Default 100\]]' \
        {-t,--test}'[Test to apply (>, <, =, >= or <=). If you use one of these two characters >, <, please do not forget to quote your parameter like that "<=". Else your terminal will complain. \[Default "="\]]' \
        {-o,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        '-v[Verbose option for debugging purpose.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_filter_gene_by_length.pl "$@"

