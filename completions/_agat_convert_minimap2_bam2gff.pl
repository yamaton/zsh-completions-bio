#compdef _agat_convert_minimap2_bam2gff.pl agat_convert_minimap2_bam2gff.pl

# Auto-generated with h2o


function _agat_convert_minimap2_bam2gff.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-i,--input}'[Input file in sam (.sam extension) or bam (.bam extension) format.]' \
        {-b,--bam}'[To force to use the input file as sam file.]' \
        {-s,--sam}'[To force to use the input file as sam file.]' \
        {-o,--out,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
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

