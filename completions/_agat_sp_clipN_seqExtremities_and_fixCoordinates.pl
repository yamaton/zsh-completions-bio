#compdef _agat_sp_clipN_seqExtremities_and_fixCoordinates.pl agat_sp_clipN_seqExtremities_and_fixCoordinates.pl

# Auto-generated with h2o


function _agat_sp_clipN_seqExtremities_and_fixCoordinates.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-g,--gff,-ref}'[Input GTF/GFF file.]' \
        {-f,--fasta}'[Input fasta file.]' \
        '--of[Output fixed fasta file. If no output file is specified, the output will be written to STDOUT.]' \
        '--og[Output fixed GFF file. If no output file is specified, the output will be written to STDOUT]' \
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

