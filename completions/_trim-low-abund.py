#compdef trim-low-abund.py

# Auto-generated with h2o

function _trim-low-abund.py {
    _arguments \
        '--version[show program'\''s version number and exit]' \
        '--info[print citation information]' \
        {-h,--help}'[show this help message and exit]' \
        {-k,--ksize}'[k-mer size to use (default: 32)]' \
        {-U,--unique-kmers}'[approximate number of unique kmers in the input set (default: 0)]' \
        '--fp-rate[Override the automatic FP rate setting for the current script (default: None)]' \
        {-M,--max-memory-usage}'[maximum amount of memory to use for data structure (default: None)]' \
        '--small-count[Reduce memory usage by using a smaller counter for individual kmers. (default: False)]' \
        {-C,--cutoff}'[remove k-mers below this abundance (default: 2)]' \
        {-Z,--trim-at-coverage,--normalize-to}'[trim reads when entire read above this coverage (default: 20)]' \
        {-o,--output}'[only output a single file with the specified filename; use a single dash "-" to specify that output should go to STDOUT (the terminal) (default: None)]':file:_files \
        {-V,--variable-coverage}'[Only trim low-abundance k-mers from sequences that have high coverage. (default: False)]' \
        {-l,--loadgraph}'[load a precomputed k-mer graph from disk (default: None)]':file:_files \
        {-s,--savegraph}'[save the k-mer countgraph to disk after allreads are loaded. (default: )]':file:_files \
        {-q,--quiet,--summary-info}'[What format should the machine readable run summary be in? (`json` or `tsv`, disabled by default) (default: None)]' \
        {--force,--ignore-pairs}'[treat all reads as if they were singletons (default: False)]' \
        {-T,--tempdir}'[Set location of temporary directory for second pass (default: ./)]':file:_files \
        '--gzip[Compress output using gzip (default: False)]' \
        '--bzip[Compress output using bzip2 (default: False)]' \
        '--diginorm[Eliminate high-coverage reads altogether (digital normalization). (default: False)]' \
        '--diginorm-coverage[Coverage threshold for --diginorm (default: 20)]' \
        '--single-pass[Do not do a second pass across the low coverage data (default: False)]' \
        "*: :_files"

}

_trim-low-abund.py "$@"

