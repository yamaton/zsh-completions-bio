#compdef _agat_sp_filter_by_mrnaBlastValue.pl agat_sp_filter_by_mrnaBlastValue.pl

# Auto-generated with h2o


function _agat_sp_filter_by_mrnaBlastValue.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '--gff[Input GTF/GFF file.]' \
        '--blast[The list of the all-vs-all blast file (outfmt 6, blastp)]' \
        '--outfile[The name of the output file. By default the output is the standard output.]' \
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

