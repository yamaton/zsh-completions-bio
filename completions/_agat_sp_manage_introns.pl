#compdef _agat_sp_manage_introns.pl agat_sp_manage_introns.pl

# Auto-generated with h2o


function _agat_sp_manage_introns.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,-f,--ref,-reffile}'[Input GTF/GFF file. You can use several input files by doing: -f file1 -f file2 -f file3]' \
        {-w,--window,--break,--breaks,-b}'[It the number of break used within the histogram plot. By default it'\''s 1000. You can modify the value to get something more or less precise.]' \
        {-x,--p}'[Allows to modify the X values to calculate the percentage of the longest introns to remove. By default the value is 1 (We remove 1 percent of the longest).]' \
        '--plot[Allows to create an histogram in pdf of intron sizes distribution.]' \
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

