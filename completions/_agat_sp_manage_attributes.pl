#compdef agat_sp_manage_attributes.pl

# Auto-generated with h2o

function _agat_sp_manage_attributes.pl {
    _arguments \
        {--gff,-f}'[Input GTF/GFF file.]' \
        {-p,--type,-l}'[primary tag option, case insensitive, list. Allow to specied the feature types that will be handled. You can specified a specific feature by given its primary tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default all feature are taking in account. fill the option by the value "all" will have the same behaviour.]' \
        {--tag,--att}'[Attributes with the tag specified will be removed from the feature type specified by the option p (primary tag). List of tag must be coma separated. /!\\ You must use "" if name contains spaces. Instead to remove an attribute, you can replace its Tag by a new Tag using this formulation tagName/newTagName. To remove all attributes non mandatory (only ID and Parent are mandatory) you can use the option with <all_attributes> parameter.]' \
        '--add[Attribute with the tag specified will be added if doesn'\''t exist. The value will be '\''empty'\''.]' \
        '--cp[When tags specied are with this form: tagName/newTagName. By using this <cp> parameter, the attribute with the tag tagName will be duplicated with the new tag newTagName if no attribute with the tag newTagName already exits.]' \
        '--overwrite[When using -add parameter, if an attribute with the specificed tag already exists, it will not be modified. When using --cp parameter, if an attribute with the specificed newTagName already exists, it will not be modified. So using the --overwrite parameter allows to overwrite the value of the existing attribute.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_manage_attributes.pl "$@"

