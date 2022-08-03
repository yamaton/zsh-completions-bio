#compdef _transChecker.sh transChecker.sh

# Auto-generated with h2o


function _transChecker.sh {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-x[Anntotation file in the DDBJ annotation format.]':file:_files \
        '-s[Sequence file in FASTA.]':file:_files \
        '-e[Log file output.]':file:_files \
        '-o[Amino acid sequence file in FASTA. When this option is not specified, no amino acid sequence is dumped.]':file:_files \
        '-t[Alignment file of nucleotide and amino acid sequences.]':file:_files \
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

