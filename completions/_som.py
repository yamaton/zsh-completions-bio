#compdef _som.py som.py

# Auto-generated with h2o


function _som.py {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-h,--help}'[show this help message and exit]' \
        {-o,--output}'[Output file prefix for statistics and feature table (when selected)]' \
        {-l,--location}'[Location for bcftools view (e.g. chr1)]' \
        {-R,--restrict-regions}'[Restrict analysis to given (sparse) regions (using -R in bcftools).]':file:_files \
        {-T,--target-regions}'[Restrict analysis to given (dense) regions (using -T in bcftools).]':file:_files \
        {-f,--false-positives}'[False-positive region bed file to distinguish UNK from FP]' \
        {-a,--ambiguous}'[Ambiguous region bed file(s) to distinguish from FP (e.g. variant only observed in some replicates)]' \
        '--ambi-fp[Use FP calls from ambiguous region files also.]' \
        '--no-ambi-fp[Do not use FP calls from ambiguous region files also.]' \
        '--count-unk[Assume the truth set covers the whole genome and only count FPs in regions specified by the truth VCF or ambiguous/false-positive regions.]' \
        '--no-count-unk[Do not use FP calls from ambiguous region files also.]' \
        {-e,--explain_ambiguous}'[print a table giving the number of ambiguous events per category]' \
        {-r,--reference}'[Specify a reference file.]' \
        '--scratch-prefix[Filename prefix for scratch report output.]' \
        '--keep-scratch[Filename prefix for scratch report output.]' \
        '--continue[Continue from scratch space (i.e. use VCFs in there if they already exist).]' \
        {-P,--include-nonpass}'[Use to include failing variants in comparison.]' \
        '--feature-table[Select a feature table to output.]' \
        '--happy-stats[Generate summary.csv.]' \
        '--bam[pass one or more BAM files for feature table extraction]' \
        '--normalize-truth[Enable running of bcftools norm on the truth file.]' \
        '--normalize-query[Enable running of bcftools norm on the query file.]' \
        {-N,--normalize-all}'[Enable running of bcftools norm on both truth and query file.]' \
        '--fixchr-truth[Add chr prefix to truth file (default: true).]' \
        '--fixchr-query[Add chr prefix to query file (default: true).]' \
        '--fix-chr-truth[Same as --fixchr-truth.]' \
        '--fix-chr-query[Same as --fixchr-query.]' \
        '--no-fixchr-truth[Disable chr replacement for truth (default: false).]' \
        '--no-fixchr-query[Add chr prefix to query file (default: false).]' \
        '--no-order-check[Disable checking the order of TP features (dev feature).]' \
        '--roc[Create a ROC-style table. This is caller specific - this will override the --feature-table switch!]' \
        '--bin-afs[Stratify into different AF buckets. This needs to have features available for getting the AF both in truth and query variants.]' \
        '--af-binsize[Bin size for AF binning (should be < 1). Multiple bin sizes can be specified using a comma, e.g. 0.1,0.2,0.5,0.2 will split at 0.1, 0.3, 0.8 and 1.0.]' \
        '--af-truth[Feature name to use for retrieving AF for truth variants (TP and FN)]' \
        '--af-query[Feature name to use for retrieving AF for query variants (FP/UNK/AMBI)]' \
        {-FN,--count-filtered-fn}'[Count filtered vs. absent FN numbers. This requires the -P switch (to use all variants) and either the --feature-table or --roc switch.]' \
        '--fp-region-size[How to obtain the normalisation constant for FP rate. By default, this will use the FP region bed file size when using --count-unk and the size of all reference contigs that overlap with the location specified in -l otherwise. This can be overridden with: 1) a number of nucleotides, or 2) "auto" to use the lengths of all contigs that have calls. The resulting value is used as fp.region.size.]' \
        '--ci-level[Confidence level for precision/recall confidence intervals (default: 0.95)]' \
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

