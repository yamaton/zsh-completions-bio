#compdef _abundance-dist-single.py abundance-dist-single.py

# Auto-generated with h2o


function _abundance-dist-single.py {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '--version[show program'\''s version number and exit]' \
        '--info[print citation information]' \
        {-h,--help}'[show this help message and exit]' \
        {-k,--ksize}'[k-mer size to use (default: 32)]' \
        {-U,--unique-kmers}'[approximate number of unique kmers in the input set (default: 0)]' \
        '--fp-rate[Override the automatic FP rate setting for the current script (default: None)]' \
        {-M,--max-memory-usage}'[maximum amount of memory to use for data structure (default: None)]' \
        '--small-count[Reduce memory usage by using a smaller counter for individual kmers. (default: False)]' \
        {-T,--threads}'[Number of simultaneous threads to execute (default: 1)]' \
        {-z,--no-zero}'[Do not output zero-count bins (default: True)]' \
        {-b,--no-bigcount}'[Do not count k-mers past 255 (default: True)]' \
        {-s,--squash}'[Overwrite output file if it exists (default: False)]' \
        '--savegraph[Save the k-mer countgraph to the specified filename. (default: None)]':file:_files \
        {-f,--force}'[Override sanity checks (default: False)]' \
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

