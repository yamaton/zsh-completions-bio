#compdef _agat_sq_add_attributes_from_tsv.pl agat_sq_add_attributes_from_tsv.pl

# Auto-generated with h2o


function _agat_sq_add_attributes_from_tsv.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '--gff[STRING: Input GTF/GFF file.]' \
        '--tsv[STRING: Input tsv file]' \
        '--csv[BOLEAN: Inform the script that the tsv input file is actually a csv (coma-separated).]' \
        {-v,--verbose}'[BOLEAN: Add verbosity]' \
        {-o,--output}'[STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format.]' \
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

