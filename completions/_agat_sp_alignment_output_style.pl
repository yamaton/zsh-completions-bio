#compdef _agat_sp_alignment_output_style.pl agat_sp_alignment_output_style.pl

# Auto-generated with h2o


function _agat_sp_alignment_output_style.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-g,--gff,-ref}'[Input GTF/GFF file.]' \
        '-v[Verbose option to see the warning messages when parsing the gff file.]' \
        {-o,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
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
