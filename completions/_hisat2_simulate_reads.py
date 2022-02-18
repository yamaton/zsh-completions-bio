#compdef _hisat2_simulate_reads.py hisat2_simulate_reads.py

# Auto-generated with h2o


function _hisat2_simulate_reads.py {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-h,--help}'[show this help message and exit]' \
        {-d,--dna}'[DNA-seq reads (default: RNA-seq reads)]' \
        '--single-end[single-end reads (default: paired-end reads)]' \
        {-r,--read-length}'[read length (default: 100)]' \
        {-f,--fragment-length}'[fragment length (default: 250)]' \
        {-n,--num-fragment}'[number of fragments (default: 1000000)]' \
        {-e,--expr-profile}'[expression profile: flux or constant (default: flux)]':file:_files \
        '--repeat-info[repeat information filename]' \
        '--error-rate[per-base sequencing error rate (%) (default: 0.0)]' \
        '--max-mismatch[max mismatches due to sequencing errors (default: 3)]' \
        '--random-seed[random seeding value (default: 0)]' \
        '--snp-prob[probability of a read including a snp when the read spans the snp ranging from 0.0 to 1.0 (default: 1.0)]' \
        '--sanity-check[sanity check]' \
        {-v,--verbose}'[also print some statistics to stderr]' \
        '--version[show program'\''s version number and exit]' \
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

