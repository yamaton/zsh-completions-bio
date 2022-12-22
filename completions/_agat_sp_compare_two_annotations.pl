#compdef _agat_sp_compare_two_annotations.pl agat_sp_compare_two_annotations.pl

# Auto-generated with h2o


function _agat_sp_compare_two_annotations.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-gff1[Input GTF/GFF file1.]' \
        '-gff2[Input GTF/GFF file2.]' \
        {-o,--output,--out}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {--debug,-d}'[Debug option, make it easier to follow what is going on for debugging purpose.]' \
        {--verbose,-v}'[Verbose option, make it easier to follow what is going on.]' \
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

