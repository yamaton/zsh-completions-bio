#compdef _agat_sp_manage_UTRs.pl agat_sp_manage_UTRs.pl

# Auto-generated with h2o


function _agat_sp_manage_UTRs.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,--ref,--reffile,-f}'[Input GTF/GFF file.]' \
        {-n,-t,--nb,--number}'[Threshold of exon'\''s number of the UTR. Over or equal to this threshold, the UTR will be discarded. Default value is 5.]' \
        {-3,--three,--tree_prime_utr}'[The threshold of the option <n> will be applied on the 3'\''UTR.]' \
        {-5,--five,--five_prime_utr}'[The threshold of the option <n> will be applied on the 5'\''UTR.]' \
        {-b,--both,--bs}'[The threshold of the option <n> will be applied on genes where the number of UTR exon (3'\'' and 5'\'' additioned) is over it.]' \
        {--p,--plot}'[Allows to create an histogram in pdf of UTR sizes distribution.]' \
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

