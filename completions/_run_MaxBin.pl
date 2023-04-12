#compdef run_MaxBin.pl

# Auto-generated with h2o

function _run_MaxBin.pl {
    _arguments \
        {-reads,-reads2,-reads3}'[Input reads information]':file:_files \
        {-abund,-abund2,-abund3}'[Input abundance information]':file:_files \
        '-reads_list[Input multiple reads files]':file:_files \
        '-abund_list[Input multiple abundance files]':file:_files \
        '-min_contig_length[minimum contig length. Default 1000]' \
        '-max_iteration[maximum Expectation-Maximization algorithm iteration number. Default 50]' \
        '-thread[thread num; default 1]' \
        '-prob_threshold[probability threshold for EM final classification. Default 0.9]' \
        '-plotmarker[plotmarker]' \
        '-markerset[marker gene sets, 107 (default) or 40.]' \
        {-version,-v}'[print version number]' \
        '-verbose[show verbose messages]' \
        '-preserve_intermediate[preserve intermediate data]' \
        "*: :_files"

}

_run_MaxBin.pl "$@"

