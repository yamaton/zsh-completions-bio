#compdef _agat_sq_add_hash_tag.pl agat_sq_add_hash_tag.pl

# Auto-generated with h2o


function _agat_sq_add_hash_tag.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,--file,--input}'[STRING: Input GTF/GFF file.]' \
        {-i,--interval}'[Integer: 1 or 2. 1 will add ### after each new sequence (column1 of the gff), while 2 will add the ### after each group of feature (gene). By default the value is 1.]' \
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

