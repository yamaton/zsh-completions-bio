#compdef extract-paired-reads.py

# Auto-generated with h2o

function _extract-paired-reads.py {
    _arguments \
        '--version[show program'\''s version number and exit]' \
        '--info[print citation information]' \
        {-h,--help}'[show this help message and exit]' \
        {-d,--output-dir}'[Output split reads to specified directory. Creates directory if necessary (default: )]':file:_files \
        {-p,--output-paired}'[Output paired reads to this file (default: None)]':file:_files \
        {-s,--output-single}'[Output orphaned reads to this file (default: None)]':file:_files \
        {-f,--force}'[Overwrite output file if it exists (default: False)]' \
        '--gzip[Compress output using gzip (default: False)]' \
        '--bzip[Compress output using bzip2 (default: False)]' \
        "*: :_files"

}

_extract-paired-reads.py "$@"

