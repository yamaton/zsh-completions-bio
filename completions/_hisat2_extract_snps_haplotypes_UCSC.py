#compdef _hisat2_extract_snps_haplotypes_UCSC.py hisat2_extract_snps_haplotypes_UCSC.py

# Auto-generated with h2o


function _hisat2_extract_snps_haplotypes_UCSC.py {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-h,--help}'[show this help message and exit]' \
        '--inter-gap[Maximum distance for variants to be in the same haplotype]' \
        '--intra-gap[Break a haplotype into several haplotypes]' \
        {-v,--verbose}'[also print some statistics to stderr]' \
        '--testset[print test reads]' \
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

