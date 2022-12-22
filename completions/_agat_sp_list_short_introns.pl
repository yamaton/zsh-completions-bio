#compdef _agat_sp_list_short_introns.pl agat_sp_list_short_introns.pl

# Auto-generated with h2o


function _agat_sp_list_short_introns.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,-f,--ref,-reffile}'[Input GTF/GFF file.]' \
        {--size,-s}'[Minimum intron size accepted in nucleotide. All introns under this size will be reported. Default value = 10.]' \
        {--out,--output,-o}'[Output gff3 file where the gene incriminated will be write.]' \
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

