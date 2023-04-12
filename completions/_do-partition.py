#compdef do-partition.py

# Auto-generated with h2o

function _do-partition.py {
    _arguments \
        '--version[show program'\''s version number and exit]' \
        '--info[print citation information]' \
        {-h,--help}'[show this help message and exit]' \
        {-k,--ksize}'[k-mer size to use (default: 32)]' \
        {-U,--unique-kmers}'[approximate number of unique kmers in the input set (default: 0)]' \
        '--fp-rate[Override the automatic FP rate setting for the current script (default: None)]' \
        {-M,--max-memory-usage}'[maximum amount of memory to use for data structure (default: None)]' \
        {-T,--threads}'[Number of simultaneous threads to execute (default: 1)]' \
        {-s,--subset-size}'[Set subset size (usually 1e5-1e6 is good) (default: 100000)]' \
        '--no-big-traverse[Truncate graph joins at big traversals (default: False)]' \
        '--keep-subsets[Keep individual subsets (default: False)]' \
        {-f,--force}'[Overwrite output file if it exists (default: False)]' \
        "*: :_files"

}

_do-partition.py "$@"

