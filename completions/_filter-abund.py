#compdef filter-abund.py

# Auto-generated with h2o

function _filter-abund.py {
    _arguments \
        '--version[show program'\''s version number and exit]' \
        '--info[print citation information]' \
        {-h,--help}'[show this help message and exit]' \
        {-T,--threads}'[Number of simultaneous threads to execute (default: 1)]' \
        {-C,--cutoff}'[Trim at k-mers below this abundance. (default: 2)]' \
        {-V,--variable-coverage}'[Only trim low-abundance k-mers from sequences that have high coverage. (default: False)]' \
        {-Z,--normalize-to}'[Base the variable-coverage cutoff on this median k-mer abundance. (default: 20)]' \
        {-o,--output}'[Output the trimmed sequences into a single file with the given filename instead of creating a new file for each input file. (default: None)]':file:_files \
        {-f,--force}'[Overwrite output file if it exists (default: False)]' \
        {-q,--quiet,--gzip}'[Compress output using gzip (default: False)]' \
        '--bzip[Compress output using bzip2 (default: False)]' \
        "*: :_files"

}

_filter-abund.py "$@"

