#compdef _agat_sp_prokka_fix_fragmented_gene_annotations.pl agat_sp_prokka_fix_fragmented_gene_annotations.pl

# Auto-generated with h2o


function _agat_sp_prokka_fix_fragmented_gene_annotations.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '--gff[Input genome GTF/GFF file. Mandatory.]' \
        {-f,--fa,--fasta}'[Input genome fasta file. Mandatory.]' \
        '--db[Input Uniprot fasta file used by prokka. Mandatory.]' \
        '--frags[Merge and fix detected FRAGS if not in the same frame]' \
        '--pseudo[Merge detected FRAGS and add the agat_pseudo attribute (value will be the location of the first stop codon met).]' \
        '--hamap_size[Some protein function are not infered by Uniprot but by Hamap. In such case the information is retrieved from the web. As hamap provide a family profile, the protein size if a range. "low" option will use the low value of the range, "middle" option will use the average of the range, "high" option will the the high value of the range. Default "high".]' \
        {--ct,--codon,--table}'[Codon table to use. \[default 1\]]' \
        '--skip_hamap[For test purpose it could be useful to skip hamap, because it requires fetching information through internet.]' \
        {-o,--output,--out}'[Output folder. Mandatory.]' \
        '-v[verbose mode. Default off.]' \
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

