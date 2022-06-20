#compdef _normalize-by-median.py normalize-by-median.py

# Auto-generated with h2o


function _normalize-by-median.py {
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
        {-q,--quiet,-C,--cutoff}'[when the median k-mer coverage level is above this number the read is not kept. (default: 20)]' \
        {-p,--paired}'[require that all sequences be properly paired (default: False)]' \
        '--force_single[treat all sequences as single-ended/unpaired (default: False)]' \
        {-u,--unpaired-reads}'[include a file of unpaired reads to which -p/--paired does not apply. (default: None)]':file:_files \
        {-s,--savegraph}'[save the k-mer countgraph to disk after all reads are loaded. (default: None)]':file:_files \
        {-R,--report}'[write progress report to report_filename (default: None)]':file:_files \
        '--report-frequency[report progress every report_frequency reads (default: 100000)]' \
        {-f,--force}'[continue past file reading errors (default: False)]' \
        {-o,--output}'[only output a single file with the specified filename; use a single dash "-" to specify that output should go to STDOUT (the terminal) (default: None)]':file:_files \
        {-l,--loadgraph}'[load a precomputed k-mer graph from disk (default: None)]':file:_files \
        '--gzip[Compress output using gzip (default: False)]' \
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

