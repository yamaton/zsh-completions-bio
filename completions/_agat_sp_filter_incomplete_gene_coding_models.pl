#compdef agat_sp_filter_incomplete_gene_coding_models.pl

# Auto-generated with h2o

function _agat_sp_filter_incomplete_gene_coding_models.pl {
    _arguments \
        '-gff[Input GTF/GFF file.]' \
        {-fa,--fasta}'[Genome fasta file. The name of the fasta file containing the genome to work with.]' \
        {--ct,--table,--codon}'[This option allows specifying the codon table to use. It expects an integer \[default 1\]]' \
        {--ad,--add_flag}'[Instead of filter the result into two output files, write only one and add the flag <incomplete> in the gff.(tag = inclomplete, value = 1, 2, 3. 1=start missing; 2=stop missing; 3=both)]' \
        {--skip_start_check,--sstartc}'[Gene model must have a start codon. Activated by default.]' \
        {--skip_stop_check,--sstopc}'[Gene model must have a stop codon. Activated by default.]' \
        {-o,--output,--out,--outfile}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        '-v[Verbose option, make it easier to follow what is going on for debugging purpose.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_filter_incomplete_gene_coding_models.pl "$@"

