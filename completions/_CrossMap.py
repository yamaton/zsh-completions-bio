#compdef CrossMap.py

# Auto-generated with h2o


function _CrossMap.py {
    local line state

    function _commands {
        local -a commands
        commands=(
            'bed:converts BED, bedGraph or other BED-like files. Only genome coordinates (i.e., the first 3 columns) will be updated. Regions mapped to multiple locations to the new assembly will be split. Use the "region" command to liftover large genomic regions. Use the "wig" command if you need bedGraph/bigWig output.'
            'bam:converts BAM, CRAM, or SAM format file. Genome coordinates, header section, all SAM flags, insert size will be updated.'
            'gff:converts GFF or GTF format file. Genome coordinates will be updated.'
            'wig:converts Wiggle or bedGraph format file. Genome coordinates will be updated.'
            'bigwig:converts BigWig file. Genome coordinates will be updated.'
            'vcf:converts VCF file. Genome coordinates, header section, reference alleles will be updated.'
            'gvcf:converts GVCF file. Genome coordinates, header section, reference alleles will be updated.'
            'maf:converts MAF (mutation annotation format) file. Genome coordinates and reference alleles will be updated.'
            'region:converts big genomic regions (in BED format) such as CNV blocks. Genome coordinates will be updated.'
            'viewchain:prints out the content of a chain file into a human readable, block-to-block format.'
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-h,--help}'[show this help message and exit]' \
        {-v,--version}'[show program'\''s version number and exit]' \
        ': :->cmd' \
        '*:: :->subcmd'

    case $state in
    (cmd)
        _commands
        ;;
    (subcmd)
        case $line[1] in
        (bed)
            _CrossMap.py_bed
            ;;

        (bam)
            _CrossMap.py_bam
            ;;

        (gff)
            _CrossMap.py_gff
            ;;

        (wig)
            _CrossMap.py_wig
            ;;

        (bigwig)
            _CrossMap.py_bigwig
            ;;

        (vcf)
            _CrossMap.py_vcf
            ;;

        (gvcf)
            _CrossMap.py_gvcf
            ;;

        (maf)
            _CrossMap.py_maf
            ;;

        (region)
            _CrossMap.py_region
            ;;

        (viewchain)
            _CrossMap.py_viewchain
            ;;

        esac
        ;;
     esac

}

function _CrossMap.py_bed {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--chromid[The style of chromosome IDs. "a" = "as-is"; "l" = "long style" (eg. "chr1", "chrX"); "s" = "short style" (eg. "1", "X").]' \
        '--unmap-file[file to save unmapped entries. This will be ignored if \[out_bed\] was not provided.]':file:_files \
        "*: :_files"

}

function _CrossMap.py_bam {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-m,--mean}'[Average insert size of pair-end sequencing (bp).]' \
        {-s,--stdev}'[Stanadard deviation of insert size.]' \
        {-t,--times}'[A mapped pair is considered as "proper pair" if both ends mapped to different strand and the distance between them is less then '\''-t'\'' * stdev from the mean.]' \
        {-a,--append-tags}'[Add tag to each alignment in BAM file. Tags for pair-end alignments include: QF = QC failed, NN = both read1 and read2 unmapped, NU = read1 unmapped, read2 unique mapped, NM = read1 unmapped, multiple mapped, UN = read1 uniquely mapped, read2 unmap, UU = both read1 and read2 uniquely mapped, UM = read1 uniquely mapped, read2 multiple mapped, MN = read1 multiple mapped, read2 unmapped, MU = read1 multiple mapped, read2 unique mapped, MM = both read1 and read2 multiple mapped. Tags for single-end alignments include: QF = QC failed, SN = unmaped, SM = multiple mapped, SU = uniquely mapped.]' \
        '--chromid[The style of chromosome IDs. "a" = "as-is"; "l" = "long style" (eg. "chr1", "chrX"); "s" = "short style" (eg. "1", "X").]' \
        "*: :_files"

}

function _CrossMap.py_gff {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--chromid[The style of chromosome IDs. "a" = "as-is"; "l" = "long style" (eg. "chr1", "chrX"); "s" = "short style" (eg. "1", "X").]' \
        "*: :_files"

}

function _CrossMap.py_wig {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--chromid[The style of chromosome IDs. "a" = "as-is"; "l" = "long style" (eg. "chr1", "chrX"); "s" = "short style" (eg. "1", "X").]' \
        "*: :_files"

}

function _CrossMap.py_bigwig {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--chromid[The style of chromosome IDs. "a" = "as-is"; "l" = "long style" (eg. "chr1", "chrX"); "s" = "short style" (eg. "1", "X").]' \
        "*: :_files"

}

function _CrossMap.py_vcf {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--chromid[The style of chromosome IDs. "a" = "as-is"; "l" = "long style" (eg. "chr1", "chrX"); "s" = "short style" (eg. "1", "X").]' \
        '--no-comp-alleles[If set, CrossMap does NOT check if the reference allele is different from the alternate allele.]' \
        '--compress[If set, compress the output VCF file by calling the system "gzip".]' \
        "*: :_files"

}

function _CrossMap.py_gvcf {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--chromid[The style of chromosome IDs. "a" = "as-is"; "l" = "long style" (eg. "chr1", "chrX"); "s" = "short style" (eg. "1", "X").]' \
        '--no-comp-alleles[If set, CrossMap does NOT check if the reference allele is different from the alternate allele.]' \
        '--compress[If set, compress the output VCF file by calling the system "gzip".]' \
        "*: :_files"

}

function _CrossMap.py_maf {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--chromid[The style of chromosome IDs. "a" = "as-is"; "l" = "long style" (eg. "chr1", "chrX"); "s" = "short style" (eg. "1", "X").]' \
        "*: :_files"

}

function _CrossMap.py_region {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--chromid[The style of chromosome IDs. "a" = "as-is"; "l" = "long style" (eg. "chr1", "chrX"); "s" = "short style" (eg. "1", "X").]' \
        {-r,--ratio}'[Minimum ratio of bases that must remap.]' \
        "*: :_files"

}

function _CrossMap.py_viewchain {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        "*: :_files"

}

_CrossMap.py "$@"

