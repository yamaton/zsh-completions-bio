#compdef _agat_sp_fix_cds_phases.pl agat_sp_fix_cds_phases.pl

# Auto-generated with h2o


function _agat_sp_fix_cds_phases.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-g,--gff,-ref}'[Input GTF/GFF file.]' \
        {-fa,--fasta}'[Input fasta file.]' \
        {-v,--verbose}'[Add verbosity.]' \
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

