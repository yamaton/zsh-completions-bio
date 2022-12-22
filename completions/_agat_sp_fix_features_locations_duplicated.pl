#compdef _agat_sp_fix_features_locations_duplicated.pl agat_sp_fix_features_locations_duplicated.pl

# Auto-generated with h2o


function _agat_sp_fix_features_locations_duplicated.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-f,--file,--gff3,--gff}'[Input GTF/GFF file.]' \
        {-m,--model}'[To select cases you want to fix. By default all are used. To select specific cases write e.g. --model 1,4,5]' \
        {-v,--verbose}'[Add verbosity.]' \
        {-o,--out,--output,--outfile}'[Output file. If none given, will be display in standard output.]' \
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

