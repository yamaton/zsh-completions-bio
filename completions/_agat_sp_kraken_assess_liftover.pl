#compdef _agat_sp_kraken_assess_liftover.pl agat_sp_kraken_assess_liftover.pl

# Auto-generated with h2o


function _agat_sp_kraken_assess_liftover.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-gtf[Input gtf file produced by Kraken.]' \
        {--threshold,-t}'[Gene mapping percentage over which a gene must be reported. By default the value is 0.]' \
        {--verbose,-v}'[Verbose information.]' \
        {--p,--plot}'[Allows to create an histogram in pdf. It shows the distribution of percentage of gene length mapped.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
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

