#compdef _agat_sp_fix_fusion.pl agat_sp_fix_fusion.pl

# Auto-generated with h2o


function _agat_sp_fix_fusion.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-gff[Input GTF/GFF file.]' \
        {-fa,--fasta}'[Input fasta file.]' \
        {--ct,--codon,--table}'[Codon table to use. \[default 1\]]' \
        {-t,--threshold}'[This is the minimum length of new protein predicted that will be taken in account. By default this value is 100 AA.]' \
        {-s,--stranded}'[By default we predict protein in UTR3 and UTR5 and in both direction. The fusion assumed can be between gene in same direction and in opposite direction. If RNAseq data used during the annotation was stranded, only fusion of close genes oriented in same direction are expected. In that case this option should be activated. When activated, we will try to predict protein in UTR3 and UTR5 only in the same orientation than the gene investigated.]' \
        {-v,--verbose}'[Output verbose information.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
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

