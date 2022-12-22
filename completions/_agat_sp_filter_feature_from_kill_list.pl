#compdef _agat_sp_filter_feature_from_kill_list.pl agat_sp_filter_feature_from_kill_list.pl

# Auto-generated with h2o


function _agat_sp_filter_feature_from_kill_list.pl {
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
        {--kl,--kill_list}'[Kill list. One value per line.]' \
        {-a,--attribute}'[Attribute tag to specify the attribute to analyse. Case sensitive. Default: ID]' \
        {-o,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        '-v[Verbose option for debugging purpose.]' \
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

