#compdef _agat_sp_filter_record_by_coordinates.pl agat_sp_filter_record_by_coordinates.pl

# Auto-generated with h2o


function _agat_sp_filter_record_by_coordinates.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-i,--input,--gtf,--gff}'[Input GTF/GFF file]' \
        {-c,--coordinates,--tsv,-r,--ranges}'[String - tsv file containing the coordinates. Coordinates must be one per line. Each line must contain 3 fields separated by a tabulation. Field1 is the sequence id Field2 is the start coordinate (included) Field3 is the end coordinate (included)]' \
        {-e,--exclude}'[Select only the features fully containined within the coordinates, exclude the overlapping ones.]' \
        {-o,--output}'[Output folder.]' \
        {-v,--verbose}'[Verbosity.]' \
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

