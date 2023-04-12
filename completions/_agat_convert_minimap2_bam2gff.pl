#compdef agat_convert_minimap2_bam2gff.pl

# Auto-generated with h2o

function _agat_convert_minimap2_bam2gff.pl {
    _arguments \
        {-i,--input}'[Input file in sam (.sam extension) or bam (.bam extension) format.]' \
        {-b,--bam}'[To force to use the input file as sam file.]' \
        {-s,--sam}'[To force to use the input file as sam file.]' \
        {-o,--out,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_convert_minimap2_bam2gff.pl "$@"

