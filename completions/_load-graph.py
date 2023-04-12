#compdef load-graph.py

# Auto-generated with h2o

function _load-graph.py {
    _arguments \
        '--version[show program'\''s version number and exit]' \
        '--info[print citation information]' \
        {-h,--help}'[show this help message and exit]' \
        {-k,--ksize}'[k-mer size to use (default: 32)]' \
        {-U,--unique-kmers}'[approximate number of unique kmers in the input set (default: 0)]' \
        '--fp-rate[Override the automatic FP rate setting for the current script (default: None)]' \
        {-M,--max-memory-usage}'[maximum amount of memory to use for data structure (default: None)]' \
        {-T,--threads}'[Number of simultaneous threads to execute (default: 1)]' \
        {--no-build-tagset,-n}'[Do NOT construct tagset while loading sequences (default: False)]' \
        {-f,--force}'[Overwrite output file if it exists (default: False)]' \
        "*: :_files"

}

_load-graph.py "$@"

