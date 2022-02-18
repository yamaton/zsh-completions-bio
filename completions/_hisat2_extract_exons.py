#compdef _hisat2_extract_exons.py hisat2_extract_exons.py

# Auto-generated with h2o


function _hisat2_extract_exons.py {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-h,--help}'[show this help message and exit]' \
        {-v,--verbose}'[also print some statistics to stderr]' \
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

