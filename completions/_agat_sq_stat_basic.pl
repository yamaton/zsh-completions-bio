#compdef _agat_sq_stat_basic.pl agat_sq_stat_basic.pl

# Auto-generated with h2o


function _agat_sq_stat_basic.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-i,--gff,--file,--input}'[STRING: Input GTF/GFF file. Several files can be processed at once: -i file1 -i file2]' \
        {-g,--genome}'[That input is design to know the genome size in order to calculate the percentage of the genome represented by each kind of feature type. You can provide an INTEGER or the genome in fasta format. If you provide the fasta, the genome size will be calculated on the fly.]' \
        '--inflate[Inflate the statistics taking into account feature with multi-parents. Indeed to avoid redundant information, some gff factorize identical features. e.g: one exon used in two different isoform will be defined only once, and will have multiple parent. By default the script count such feature only once. Using the inflate option allows to count the feature and its size as many time there are parents.]' \
        {-o,--output}'[STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format.]' \
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

