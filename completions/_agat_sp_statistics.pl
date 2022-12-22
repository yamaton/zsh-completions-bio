#compdef _agat_sp_statistics.pl agat_sp_statistics.pl

# Auto-generated with h2o


function _agat_sp_statistics.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,-i}'[Input GTF/GFF file.]' \
        {--gs,-f,-g}'[This option inform about the genome size in oder to compute more statistics. You can give the size in Nucleotide or directly the fasta file.]' \
        {-d,-p}'[When this option is used, an histogram of distribution of the features will be printed in pdf files. (d means distribution, p means plot).]' \
        {-v,--verbose}'[Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2 and 3 are increasing verbosity.]' \
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

