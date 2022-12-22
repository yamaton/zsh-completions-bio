#compdef _agat_sp_fix_overlaping_genes.pl agat_sp_fix_overlaping_genes.pl

# Auto-generated with h2o


function _agat_sp_fix_overlaping_genes.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-f,--file,--gff3,--gff}'[Input GTF/GFF file.]' \
        {-m,--merge}'[Bolean: Merge/add the attributes of gene feature that are merged (except ID and Parent).]' \
        {-o,--out,--output,--outfile}'[Output file. If none given, will be display in standard output.]' \
        {-v,--verbose}'[BOLEAN: Add verbosity.]' \
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

