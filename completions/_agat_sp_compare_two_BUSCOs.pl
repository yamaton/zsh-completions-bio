#compdef agat_sp_compare_two_BUSCOs.pl

# Auto-generated with h2o

function _agat_sp_compare_two_BUSCOs.pl {
    _arguments \
        '--f1[STRING: Input busco folder1]' \
        '--f2[STRING: Input busco folder2]' \
        {-v,--verbose}'[Integer: For displaying extra information use -v 1.]' \
        {-o,--output}'[STRING: Output folder.]' \
        {--help,-h}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_compare_two_BUSCOs.pl "$@"

