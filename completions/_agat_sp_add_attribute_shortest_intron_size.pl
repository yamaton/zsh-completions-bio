#compdef _agat_sp_add_attribute_shortest_intron_size.pl agat_sp_add_attribute_shortest_intron_size.pl

# Auto-generated with h2o


function _agat_sp_add_attribute_shortest_intron_size.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,-f,--ref,-reffile}'[STRING: Input GTF/GFF file.]' \
        {--out,--output,-o}'[STRING: Output gff3 file where the result will be printed.]' \
        '-v[BOLEAN: Verbose for debugging purpose.]' \
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

