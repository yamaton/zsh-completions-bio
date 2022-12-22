#compdef _agat_sp_filter_gene_by_intron_numbers.pl agat_sp_filter_gene_by_intron_numbers.pl

# Auto-generated with h2o


function _agat_sp_filter_gene_by_intron_numbers.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-f,--reffile,--gff,-ref}'[Input GFF3 file that will be read]' \
        {-n,--nb,--number}'[Integer - Number of introns \[Default 0\]]' \
        {-o,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        '-v[Verbose option for debugging purpose.]' \
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

