#compdef _abundance-dist.py abundance-dist.py

# Auto-generated with h2o


function _abundance-dist.py {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '--version[show program'\''s version number and exit]' \
        '--info[print citation information]' \
        {-h,--help}'[show this help message and exit]' \
        {-z,--no-zero}'[Do not output zero-count bins (default: True)]' \
        {-s,--squash}'[Overwrite existing output_histogram_filename (default: False)]' \
        {-b,--no-bigcount}'[Do not count k-mers past 255 (default: True)]' \
        {-f,--force}'[Continue even if specified input files do not exist or are empty. (default: False)]' \
        '*: :_files'

    case $state in
    (cmd)
        _commands
        ;;
    (subcmd)
        case $line[1] in
        esac
        ;;
     esac

}

