#compdef _agat_sq_reverse_complement.pl agat_sq_reverse_complement.pl

# Auto-generated with h2o


function _agat_sq_reverse_complement.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,--file,--input}'[STRING: Input GTF/GFF file.]' \
        {-f,--fasta}'[STRING: fasta file.]' \
        {-v,--verbose}'[BOOLEAN: For verbosity.]' \
        {-o,--output}'[STRING: Output file. If no output file is specified, the output will be written to STDOUT.]' \
        {--help,-h}'[BOOLEAN: Display this helpful text.]' \
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

