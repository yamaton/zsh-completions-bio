#compdef load-into-counting.py

# Auto-generated with h2o

function _load-into-counting.py {
    _arguments \
        '--version[show program'\''s version number and exit]' \
        '--info[print citation information]' \
        {-h,--help}'[show this help message and exit]' \
        {-k,--ksize}'[k-mer size to use (default: 32)]' \
        {-U,--unique-kmers}'[approximate number of unique kmers in the input set (default: 0)]' \
        '--fp-rate[Override the automatic FP rate setting for the current script (default: None)]' \
        {-M,--max-memory-usage}'[maximum amount of memory to use for data structure (default: None)]' \
        '--small-count[Reduce memory usage by using a smaller counter for individual kmers. (default: False)]' \
        {-T,--threads}'[Number of simultaneous threads to execute (default: 1)]' \
        {-b,--no-bigcount}'[The default behaviour is to count past 255 using bigcount. This flag turns bigcount off, limiting counts to 255. (default: True)]' \
        {-s,--summary-info}'[What format should the machine readable run summary be in? (`json` or `tsv`, disabled by default) (default: None)]' \
        {-f,--force}'[Overwrite output file if it exists (default: False)]' \
        "*: :_files"

}

_load-into-counting.py "$@"

