#compdef _agat_sq_mask.pl agat_sq_mask.pl

# Auto-generated with h2o


function _agat_sq_mask.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-g,--gff,-ref}'[Input GTF/GFF file.]' \
        {-f,--fasta}'[Input fasta file that will be masked]' \
        '-sm[SoftMask option =>Sequences masked will be in lowercase]' \
        '-hm[HardMask option => Sequences masked will be replaced by a character. By default the character used is '\''n'\''. But you are allowed to speceify any character of your choice. To use '\''z'\'' instead of '\''n'\'' type: -hm z]' \
        {-o,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
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

