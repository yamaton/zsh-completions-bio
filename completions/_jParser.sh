#compdef _jParser.sh jParser.sh

# Auto-generated with h2o


function _jParser.sh {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-x[Anntotation file in the DDBJ annotation format]':file:_files \
        '-s[Sequence file in FASTA]':file:_files \
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

