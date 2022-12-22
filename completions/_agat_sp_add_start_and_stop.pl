#compdef _agat_sp_add_start_and_stop.pl agat_sp_add_start_and_stop.pl

# Auto-generated with h2o


function _agat_sp_add_start_and_stop.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,-i,-g}'[Input GTF/GFF file.]' \
        {--fasta,--fa,-f}'[Input fasta file. Needed to check that CDS sequences start by start codon and stop by stop codon.]' \
        {--ct,--codon,--table}'[Codon table to use. \[default 1\]]' \
        {--out,--output,-o}'[Output gff file updated]' \
        '-v[Verbose for debugging purpose.]' \
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

