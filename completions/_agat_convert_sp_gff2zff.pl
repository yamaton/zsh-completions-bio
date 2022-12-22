#compdef _agat_convert_sp_gff2zff.pl agat_convert_sp_gff2zff.pl

# Auto-generated with h2o


function _agat_convert_sp_gff2zff.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '--gff[Input GTF/GFF file]' \
        '--fasta[Input fasta file]' \
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

