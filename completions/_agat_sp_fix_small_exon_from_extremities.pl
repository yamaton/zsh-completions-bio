#compdef _agat_sp_fix_small_exon_from_extremities.pl agat_sp_fix_small_exon_from_extremities.pl

# Auto-generated with h2o


function _agat_sp_fix_small_exon_from_extremities.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-gff[Input GTF/GFF file.]' \
        {-fa,--fasta}'[Genome fasta file The name of the fasta file containing the genome to work with.]' \
        {--ct,--table,--codon}'[This option allows specifying the codon table to use - It expects an integer (1 by default = standard)]' \
        {--size,-s}'[Minimum exon size accepted in nucleotide. All exon below this size will be extended to this size. Default value = 15.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        '-v[Verbose option, make it easier to follow what is going on for debugging purpose.]' \
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

