#compdef _filter-abund-single.py filter-abund-single.py

# Auto-generated with h2o


function _filter-abund-single.py {
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
        {-C,--cutoff}'[Trim at k-mers below this abundance. (default: 2)]' \
        {-V,--variable-coverage}'[Only trim low-abundance k-mers from sequences that have high coverage. (default: False)]' \
        {-Z,--normalize-to}'[Base the variable-coverage cutoff on this median k-mer abundance. (default: 20)]' \
        '--savegraph[If present, the name of the file to save the k-mer countgraph to (default: )]':file:_files \
        {-o,--outfile}'[Override default output filename and output trimmed sequences into a file with the given filename. (default: None)]':file:_files \
        {-f,--force}'[Overwrite output file if it exists (default: False)]' \
        {-q,--quiet,--gzip}'[Compress output using gzip (default: False)]' \
        '--bzip[Compress output using bzip2 (default: False)]' \
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

