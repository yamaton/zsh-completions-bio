#compdef _agat_convert_genscan2gff.pl agat_convert_genscan2gff.pl

# Auto-generated with h2o


function _agat_convert_genscan2gff.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--genscan,-g}'[Input bed file that will be convert.]' \
        '--genscan[Input bed file that will be convert.]' \
        '--source[The source informs about the tool used to produce the data and is stored in 2nd field of a gff file. Example: Stringtie,Maker,Augustus,etc. \[default: data\]]' \
        '--primary_tag[The primary_tag corresponf to the data type and is stored in 3rd field of a gff file. Example: gene,mRNA,CDS,etc. \[default: gene\]]' \
        '--inflate_off[By default we inflate the block fields (blockCount, blockSizes, blockStarts) to create subfeatures of the main feature (primary_tag). Type of subfeature created based on the inflate_type parameter. If you don'\''t want this inflating behaviour you can deactivate it by using the option --inflate_off.]' \
        '--inflate_type[Feature type (3rd column in gff) created when inflate parameter activated \[default: exon\].]' \
        '--verbose[add verbosity]' \
        {-o,--output,--out,--outfile,--gff}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
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

