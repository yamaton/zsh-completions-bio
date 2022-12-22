#compdef _agat_sq_add_locus_tag.pl agat_sq_add_locus_tag.pl

# Auto-generated with h2o


function _agat_sq_add_locus_tag.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,--file,--input}'[STRING: Input GTF/GFF file.]' \
        {-p,--type,-l}'[Primary tag option, case insensitive, list. Allow to specied the Level1 feature types that will be handled. By default all feature Level1 are taken into account.]' \
        {--lo,--to}'[Locus tag output, by defaut it will be called locus_tag, but using this option you can specied the name of this attribute.]' \
        {--li,--ti}'[Tag input, by default the value of the locus tag attribute will be locusX where X is an incremented number. You can use the values of an existing attribute instead e.g the ID value: --li ID.]' \
        {-o,--output}'[STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format.]' \
        {-q,--quiet}'[To remove verbosity.]' \
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

