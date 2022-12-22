#compdef _agat_sp_fix_longest_ORF.pl agat_sp_fix_longest_ORF.pl

# Auto-generated with h2o


function _agat_sp_fix_longest_ORF.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '--gff[Input GTF/GFF file.]' \
        {-f,--fa,--fasta}'[Imput fasta file.]' \
        {--ct,--codon,--table}'[Codon table to use. \[default 1\]]' \
        {-m,--model}'[Kind of ORF Model you want to fix. By default all are used. To select specific models writte e.g --model 1,4]' \
        {-s,--split}'[This option is usefull for Model2. Indeed when the prediction is non overlapping the original cds, it is possible to split the gene into two different genes. By default we don'\''t split it. We keep the longest. If you want to split it type: -s]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        '-v[verbose mode. Default off. -v 1 minimum verbosity, -v 3 maximum verbosity]' \
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

