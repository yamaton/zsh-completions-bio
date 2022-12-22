#compdef _agat_convert_sp_gxf2gxf.pl agat_convert_sp_gxf2gxf.pl

# Auto-generated with h2o


function _agat_convert_sp_gxf2gxf.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-g,--gtf,--gff,--gxf}'[String - Input GTF/GFF file. Compressed file with .gz extension is accepted.]' \
        '-v[Integer - Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2 and 3 are increasing verbosity.]' \
        {-o,--output}'[String - Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Boolean - Display this helpful text.]' \
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

