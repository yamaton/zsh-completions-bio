#compdef _agat_sp_flag_premature_stop_codons.pl agat_sp_flag_premature_stop_codons.pl

# Auto-generated with h2o


function _agat_sp_flag_premature_stop_codons.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,--ref,-reffile}'[Input GTF/GFF file.]' \
        {-f,--fa,--fasta}'[Imput fasta file.]' \
        {--ct,--codon,--table}'[Codon table to use. \[default 1\]]' \
        {--out,--output,-o}'[Output gff3 file where the result will be printed.]' \
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

