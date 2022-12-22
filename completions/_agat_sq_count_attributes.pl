#compdef _agat_sq_count_attributes.pl agat_sq_count_attributes.pl

# Auto-generated with h2o


function _agat_sq_count_attributes.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,-f}'[Input GTF/GFF file.]' \
        {--tag,--att}'[The name of the attribute that will be investigated.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
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

