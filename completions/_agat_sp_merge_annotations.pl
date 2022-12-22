#compdef _agat_sp_merge_annotations.pl agat_sp_merge_annotations.pl

# Auto-generated with h2o


function _agat_sp_merge_annotations.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,-f}'[Input GTF/GFF file(s). You can specify as much file you want like so: -f file1 -f file2 -f file3]' \
        {--out,--output,-o}'[Output gff3 file where the gene incriminated will be write.]' \
        {--help,-h}'[Display this helpful text.]' \
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

