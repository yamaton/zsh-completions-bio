#compdef _agat_convert_embl2gff.pl agat_convert_embl2gff.pl

# Auto-generated with h2o


function _agat_convert_embl2gff.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '--embl[Input EMBL file that will be read]' \
        '--emblmygff3[Bolean - Means that the EMBL flat file comes from the EMBLmyGFF3 software. This is an EMBL format dedicated for submission and contains particularity to deal with. This parameter is needed to get a proper sequence id in the GFF3 from an embl made with EMBLmyGFF3.]' \
        {--primary_tag,--pt,-t}'[List of "primary tag". Useful to discard or keep specific features. Multiple tags must be coma-separated.]' \
        '-d[Bolean - Means that primary tags provided by the option "primary_tag" will be discarded.]' \
        '-k[Bolean - Means that only primary tags provided by the option "primary_tag" will be kept.]' \
        '--throw_fasta[Bolean - Means that you do not want to keep the fasta sequence at the end of the gff output.]' \
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

