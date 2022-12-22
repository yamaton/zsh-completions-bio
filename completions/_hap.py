#compdef _hap.py hap.py

# Auto-generated with h2o


function _hap.py {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-h,--help}'[show this help message and exit]' \
        {-v,--version}'[Show version number and exit.]' \
        {-r,--reference}'[Specify a reference file.]' \
        {-o,--report-prefix}'[Filename prefix for report output.]' \
        '--scratch-prefix[Directory for scratch files.]' \
        '--keep-scratch[Filename prefix for scratch report output.]' \
        {-t,--type}'[Annotation format in input VCF file.]' \
        {-f,--false-positives}'[False positive / confident call regions (.bed or .bed.gz). Calls outside these regions will be labelled as UNK.]':file:_files \
        '--stratification[Stratification file list (TSV format -- first column is region name, second column is file name).]' \
        '--stratification-region[Add single stratification region, e.g. --stratification-region TEST:test.bed]' \
        '--stratification-fixchr[Add chr prefix to stratification files if necessary]' \
        {-V,--write-vcf}'[Write an annotated VCF.]' \
        {-X,--write-counts}'[Write advanced counts and metrics.]' \
        '--no-write-counts[Do not write advanced counts and metrics.]' \
        '--output-vtc[Write VTC field in the final VCF which gives the counts each position has contributed to.]' \
        '--preserve-info[When using XCMP, preserve and merge the INFO fields in truth and query. Useful for ROC computation.]' \
        '--roc[Select a feature to produce a ROC on (INFO feature, QUAL, GQX, ...).]' \
        '--no-roc[Disable ROC computation and only output summary statistics for more concise output.]' \
        '--roc-regions[Select a list of regions to compute ROCs in. By default, only the '\''*'\'' region will produce ROC output (aggregate variant counts).]' \
        '--roc-filter[Select a filter to ignore when making ROCs.]' \
        '--roc-delta[Minimum spacing between ROC QQ levels.]' \
        '--ci-alpha[Confidence level for Jeffrey'\''s CI for recall, precision and fraction of non-assessed calls.]' \
        '--no-json[Disable JSON file output.]' \
        {--location,-l}'[Comma-separated list of locations \[use naming after preprocessing\], when not specified will use whole VCF.]' \
        '--pass-only[Keep only PASS variants.]' \
        '--filters-only[Specify a comma-separated list of filters to apply (by default all filters are ignored / passed on.]' \
        {-R,--restrict-regions}'[Restrict analysis to given (sparse) regions (using -R in bcftools).]':file:_files \
        {-T,--target-regions}'[Restrict analysis to given (dense) regions (using -T in bcftools).]':file:_files \
        {-L,--leftshift}'[Left-shift variants safely.]' \
        '--no-leftshift[Do not left-shift variants safely.]' \
        '--decompose[Decompose variants into primitives. This results in more granular counts.]' \
        {-D,--no-decompose}'[Do not decompose variants into primitives.]' \
        '--bcftools-norm[Enable preprocessing through bcftools norm -c x -D (requires external preprocessing to be switched on).]' \
        '--fixchr[Add chr prefix to VCF records where necessary (default: auto, attempt to match reference).]' \
        '--no-fixchr[Do not add chr prefix to VCF records (default: auto, attempt to match reference).]' \
        '--bcf[Use BCF internally. This is the default when the input file is in BCF format already. Using BCF can speed up temp file access, but may fail for VCF files that have broken headers or records that don'\''t comply with the header.]' \
        '--somatic[Assume the input file is a somatic call file and squash all columns into one, putting all FORMATs into INFO + use half genotypes (see also --set-gt). This will replace all sample columns and replace them with a single one.]' \
        '--set-gt[This is used to treat Strelka somatic files Possible values for this parameter: half / hemi / het / hom / half to assign one of the following genotypes to the resulting sample: 1 | 0/1 | 1/1 | ./1. This will replace all sample columns and replace them with a single one.]' \
        '--filter-nonref[Remove any variants genotyped as <NON_REF>.]' \
        '--convert-gvcf-to-vcf[Convert the input set from genome VCF format to a VCF before processing.]' \
        '--gender[Specify sex. This determines how haploid calls on chrX get treated: for male samples, all non-ref calls (in the truthset only when running through hap.py) are given a 1/1 genotype.]' \
        '--convert-gvcf-truth[Convert the truth set from genome VCF format to a VCF before processing.]' \
        '--convert-gvcf-query[Convert the query set from genome VCF format to a VCF before processing.]' \
        '--preprocess-truth[Preprocess truth file with same settings as query (default is to accept truth in original format).]' \
        '--usefiltered-truth[Use filtered variant calls in truth file (by default, only PASS calls in the truth file are used)]' \
        '--preprocessing-window-size[Preprocessing window size (variants further apart than that size are not expected to interfere).]' \
        '--adjust-conf-regions[Adjust confident regions to include variant locations. Note this will only include variants that are included in the CONF regions already when viewing with bcftools; this option only makes sure insertions are padded correctly in the CONF regions (to capture these, both the base before and after must be contained in the bed file).]' \
        '--no-adjust-conf-regions[Do not adjust confident regions for insertions.]' \
        {--unhappy,--no-haplotype-comparison}'[Disable haplotype comparison (only count direct GT matches as TP).]' \
        {-w,--window-size}'[Minimum distance between variants such that they fall into the same superlocus.]' \
        '--xcmp-enumeration-threshold[Enumeration threshold / maximum number of sequences to enumerate per block.]' \
        '--xcmp-expand-hapblocks[Expand haplotype blocks by this many basepairs left and right.]' \
        '--threads[Number of threads to use.]' \
        '--engine[Comparison engine to use.]' \
        '--engine-vcfeval-path[This parameter should give the path to the "rtg" executable. The default is rtg]' \
        '--engine-vcfeval-template[Vcfeval needs the reference sequence formatted in its own file format (SDF -- run rtg format -o ref.SDF ref.fa). You can specify this here to save time when running hap.py with vcfeval. If no SDF folder is specified, hap.py will create a temporary one.]' \
        '--scmp-distance[For distance-based matching (vcfeval and scmp), this is the distance between variants to use.]' \
        '--lose-match-distance[For distance-based matching (vcfeval and scmp), this is the distance between variants to use.]' \
        '--logfile[Write logging information into file rather than to stderr]':file:_files \
        '--verbose[Raise logging level from warning to info.]' \
        '--quiet[Set logging level to output errors only.]' \
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

