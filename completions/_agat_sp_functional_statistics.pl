#compdef _agat_sp_functional_statistics.pl agat_sp_functional_statistics.pl

# Auto-generated with h2o


function _agat_sp_functional_statistics.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,-f}'[Input GTF/GFF file.]' \
        {--gs,-g}'[This option inform about the genome size in oder to compute more statistics. You can give the size in Nucleotide or directly the fasta file.]' \
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

