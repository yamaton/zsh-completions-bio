#compdef _agat_sp_add_introns.pl agat_sp_add_introns.pl

# Auto-generated with h2o


function _agat_sp_add_introns.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,-f,--ref,-reffile}'[Input GTF/GFF file.]' \
        {--out,--output,-o}'[Output GFF3 file.]' \
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

