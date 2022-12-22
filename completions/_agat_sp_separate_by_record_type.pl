#compdef _agat_sp_separate_by_record_type.pl agat_sp_separate_by_record_type.pl

# Auto-generated with h2o


function _agat_sp_separate_by_record_type.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-g,--gff,-ref}'[Input GTF/GFF file.]' \
        {-o,--output}'[Output folder. If no output folder provided, the default name will be <split_result>.]' \
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

