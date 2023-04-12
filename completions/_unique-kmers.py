#compdef unique-kmers.py

# Auto-generated with h2o

function _unique-kmers.py {
    _arguments \
        '--version[show program'\''s version number and exit]' \
        '--info[print citation information]' \
        {-h,--help}'[show this help message and exit]' \
        {-q,--quiet,-k,--ksize}'[k-mer size to use (default: 32)]' \
        {-e,--error-rate}'[Acceptable error rate (default: 0.01)]' \
        {-R,--report}'[generate informational report and write to filename (default: None)]':file:_files \
        {-S,--stream-records}'[write input sequences to STDOUT (default: False)]' \
        '--diagnostics[print out recommended tablesize arguments and restrictions (default: False)]' \
        "*: :_files"

}

_unique-kmers.py "$@"

