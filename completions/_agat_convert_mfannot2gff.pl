#compdef _agat_convert_mfannot2gff.pl agat_convert_mfannot2gff.pl

# Auto-generated with h2o


function _agat_convert_mfannot2gff.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-m,-i,--mfannot}'[The mfannot input file]' \
        {-g,-o,--gff}'[the gff output file]' \
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

