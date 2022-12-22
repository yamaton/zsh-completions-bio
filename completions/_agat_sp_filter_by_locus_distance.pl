#compdef _agat_sp_filter_by_locus_distance.pl agat_sp_filter_by_locus_distance.pl

# Auto-generated with h2o


function _agat_sp_filter_by_locus_distance.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-gff[Input GTF/GFF file.]' \
        {--dist,-d}'[The minimum inter-loci distance to allow. No default (will not apply filter by default).]' \
        {--add,--add_flag}'[Instead of filter the result into two output files, write only one and add the flag <low_dist> in the gff.(tag = Lvalue or tag = Rvalue where L is left and R right and the value is the distance with accordingle the left or right locus)]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        '-v[Verbose option, make it easier to follow what is going on for debugging purpose.]' \
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

