#compdef agat_sq_list_attributes.pl

# Auto-generated with h2o

function _agat_sq_list_attributes.pl {
    _arguments \
        {--gff,-f}'[Input GTF/GFF file.]' \
        {-p,-t,-l}'[primary tag option, case insensitive, list. Allow to specied the feature types that will be handled. You can specified a specific feature by given its primary tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default all feature are taking in account. fill the option by the value "all" will have the same behaviour.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sq_list_attributes.pl "$@"

