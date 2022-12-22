#compdef _agat_sp_keep_longest_isoform.pl agat_sp_keep_longest_isoform.pl

# Auto-generated with h2o


function _agat_sp_keep_longest_isoform.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,-f}'[GTF/GFF file.]' \
        {--output,-o}'[File where will be written the result. If no output file is specified, the output will be written to STDOUT.]' \
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

