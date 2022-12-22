#compdef _agat_sp_compare_two_BUSCOs.pl agat_sp_compare_two_BUSCOs.pl

# Auto-generated with h2o


function _agat_sp_compare_two_BUSCOs.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '--f1[STRING: Input busco folder1]' \
        '--f2[STRING: Input busco folder2]' \
        {-v,--verbose}'[Integer: For displaying extra information use -v 1.]' \
        {-o,--output}'[STRING: Output folder.]' \
        {--help,-h}'[Display this helpful text.]' \
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

