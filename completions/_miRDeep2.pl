#compdef miRDeep2.pl

# Auto-generated with h2o

function _miRDeep2.pl {
    _arguments \
        '-a[minimum read stack height that triggers analysis. Using this option disables automatic estimation of the optimal value and all detected precursors are analyzed]' \
        '-g[maximum number of precursors to analyze when automatic excision gearing is used. default=50.000, if set to -1 all precursors will be analyzed]' \
        '-b[minimum score cut-off for predicted novel miRNAs to be displayed in the overview table. This score cut-off is by default 0.]' \
        '-c[disable randfold analysis]' \
        '-d[disable pdf generation]' \
        '-t[species being analyzed - this is used to link to the appropriate UCSC browser entry]' \
        '-u[output list of UCSC browser species that are supported and exit]' \
        '-v[remove directory with temporary files]' \
        '-o[do not sort aligned reads in pdf files by sample, only used if multiple samples were used as input (see Readme for mor information)]' \
        '-s[File with known miRBase star sequences]':file:_files \
        '-z[Additional tag appended to current time stamp]' \
        '-P[use this switch if mature_ref_miRNAs contain miRBase v18 identifiers (5p and 3p) instead of previous ids from v17]' \
        "*: :_files"

}

_miRDeep2.pl "$@"

