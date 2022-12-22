#compdef _agat_sp_sensitivity_specificity.pl agat_sp_sensitivity_specificity.pl

# Auto-generated with h2o


function _agat_sp_sensitivity_specificity.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-gff1[Input GTF/GFF file 1.]' \
        '-gff2[Input GTF/GFF file 2.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        '-v[Verbose option for debug purposes.]' \
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

