#compdef _agat_convert_sp_gff2gtf.pl agat_convert_sp_gff2gtf.pl

# Auto-generated with h2o


function _agat_convert_sp_gff2gtf.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,--gtf,-i}'[Input GFF/GTF file that will be read]' \
        {-o,--output,--out,--outfile,--gtf}'[Output GTF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
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

