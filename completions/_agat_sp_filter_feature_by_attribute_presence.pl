#compdef _agat_sp_filter_feature_by_attribute_presence.pl agat_sp_filter_feature_by_attribute_presence.pl

# Auto-generated with h2o


function _agat_sp_filter_feature_by_attribute_presence.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-f,--reffile,--gff,-ref}'[Input GFF3 file that will be read]' \
        {-p,--type,-l}'[primary tag option, case insensitive, list. Allow to specied the feature types that will be handled. You can specified a specific feature by given its primary tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default all feature are taking into account. fill the option by the value "all" will have the same behaviour.]' \
        {--attribute,--att,-a}'[String - Attributes tag specified will be used to filter the feature type (feature type can also be specified by the option -p). List of attribute tags must be coma separated.]' \
        '--flip[BOLEAN - In order to flip the test and keep features that do have the attribute and filter those without]' \
        {-o,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        '*: :_files'

    case $state in
    (cmd)
        _commands
        ;;
    (subcmd)
        case $line[1] in
        esac
        ;;
     esac

}

