#compdef paftools.js

# Auto-generated with h2o


function _paftools.js {
    local line state

    function _commands {
        local -a commands
        commands=(
            'view:convert PAF to BLAST-like (for eyeballing) or MAF'
            'splice2bed:convert spliced alignment in PAF/SAM to BED12'
            'sam2paf:convert SAM to PAF'
            'gff2bed:convert GTF/GFF3 to BED12'
            'asmstat:collect basic assembly information'
            'asmgene:evaluate gene completeness'
            'misjoin:evaluate large-scale misjoins'
            'liftover:simplistic liftOver'
            'call:call variants from asm-to-ref alignment with the cs tag'
            'bedcov:compute the number of bases covered'
            'vcfstat:VCF statistics'
            'sveval:compare two SV callsets in VCF'
            'mapeval:evaluate mapping accuracy using mason2/PBSIM-simulated FASTQ'
            'pafcmp:compare two PAF files'
            'junceval:evaluate splice junction consistency with known annotations'
            'ov-eval:evaluate read overlap sensitivity using read-to-ref mapping'
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        ': :->cmd' \
        '*:: :->subcmd'

    case $state in
    (cmd)
        _commands
        ;;
    (subcmd)
        case $line[1] in
        (view)
            _paftools.js_view
            ;;

        (splice2bed)
            _paftools.js_splice2bed
            ;;

        (sam2paf)
            _paftools.js_sam2paf
            ;;

        (gff2bed)
            _paftools.js_gff2bed
            ;;

        (asmstat)
            _paftools.js_asmstat
            ;;

        (asmgene)
            _paftools.js_asmgene
            ;;

        (misjoin)
            _paftools.js_misjoin
            ;;

        (liftover)
            _paftools.js_liftover
            ;;

        (call)
            _paftools.js_call
            ;;

        (bedcov)
            _paftools.js_bedcov
            ;;

        (vcfstat)
            _paftools.js_vcfstat
            ;;

        (sveval)
            _paftools.js_sveval
            ;;

        (mapeval)
            _paftools.js_mapeval
            ;;

        (pafcmp)
            _paftools.js_pafcmp
            ;;

        (junceval)
            _paftools.js_junceval
            ;;

        (ov-eval)
            _paftools.js_ov-eval
            ;;

        esac
        ;;
     esac

}

function _paftools.js_view {
    _arguments \
        '-f[output format: aln (BLAST-like), maf or lastz-cigar \[aln\]]' \
        '-l[line length in BLAST-like output \[80\]]' \
        "*: :_files"

}

function _paftools.js_splice2bed {
    _arguments \
        '-m[keep multiple mappings (SAM flag 0x100)]' \
        "*: :_files"

}

function _paftools.js_sam2paf {
    _arguments \
        '-p[convert primary or supplementary alignments only]' \
        '-L[output the cs tag in the long form]' \
        "*: :_files"

}

function _paftools.js_gff2bed {
    _arguments \
        '-j[Output junction BED]' \
        '-s[Print names in the short form]' \
        '-u[hg38.fa.fai for chr name conversion]':file:_files \
        '-g[Output GFF (used with -u)]' \
        "*: :_files"

}

function _paftools.js_asmstat {
    _arguments \
        '-q[ignore query shorter than INT \[0\]]' \
        '-l[min alignment block length \[10000\]]' \
        '-d[max gap-compressed sequence divergence \[0.01\]]' \
        "*: :_files"

}

function _paftools.js_asmgene {
    _arguments \
        '-i[min identity \[0.99\]]' \
        '-c[min coverage \[0.99\]]' \
        '-a[only evaluate genes mapped to the autosomes]' \
        '-e[print fragmented/missing genes]' \
        "*: :_files"

}

function _paftools.js_misjoin {
    _arguments \
        '-c[BED for centromeres \[\]]':file:_files \
        '-r[count a centromeric event if overlap ratio > FLOAT \[0.5\]]' \
        '-l[min alignment block length \[1m\]]' \
        '-g[max gap size \[1m\]]' \
        '-e[output misjoins not involving centromeres]' \
        '-p[output long alignment blocks for debugging]' \
        "*: :_files"

}

function _paftools.js_liftover {
    _arguments \
        '-q[min mapping quality \[5\]]' \
        '-l[min alignment length \[50000\]]' \
        '-d[max sequence divergence (>=1 to disable) \[1\]]' \
        "*: :_files"

}

function _paftools.js_call {
    _arguments \
        '-l[min alignment length to compute coverage \[10000\]]' \
        '-L[min alignment length to call variants \[50000\]]' \
        '-q[min mapping quality \[5\]]' \
        '-g[short/long gap threshold (for statistics only) \[50\]]' \
        '-f[reference sequences (enabling VCF output) \[null\]]':file:_files \
        '-s[sample name in VCF header \[sample\]]' \
        "*: :_files"

}

function _paftools.js_bedcov {
    _arguments \
        '-e[exclude target regions (2nd file) overlapping BED FILE \[\]]':file:_files \
        '-p[print number of covered bases for each target]' \
        "*: :_files"

}

function _paftools.js_vcfstat {
    _arguments \
        "*: :_files"

}

function _paftools.js_sveval {
    _arguments \
        '-r[confident region in BED \[\]]':file:_files \
        '-f[min length to discard \[30\]]' \
        '-i[min SV length \[50\]]' \
        '-x[max SV length \[100000\]]' \
        '-w[fuzzy windown size \[500\]]' \
        '-d[max allele diff if there is a single allele in the window \[0.5\]]' \
        '-e[print errors]' \
        "*: :_files"

}

function _paftools.js_mapeval {
    _arguments \
        '-r[mapping correct if overlap_length/union_length>FLOAT \[0.1\]]' \
        '-Q[print wrong mappings with mapQ>INT \[don'\''t print\]]' \
        '-m[0: eval the longest aln only; 1: first aln only; 2: all primary aln \[0\]]' \
        "*: :_files"

}

function _paftools.js_pafcmp {
    _arguments \
        '-q[min mapping quality \[10\]]' \
        "*: :_files"

}

function _paftools.js_junceval {
    _arguments \
        '-l[tolerance of junction positions (0 for exact) \[0\]]' \
        '-p[print overlapping introns]' \
        '-e[print erroreous overlapping introns]' \
        '-c[only consider alignments to /^(chr)?(\[0-9\]+|X|Y)$/]' \
        "*: :_files"

}

function _paftools.js_ov-eval {
    _arguments \
        '-l[min overlap length \[2000\]]' \
        '-q[min mapping quality \[10\]]' \
        '-f[min fraction of mapped length \[0.95\]]' \
        "*: :_files"

}

_paftools.js "$@"

