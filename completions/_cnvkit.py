#compdef cnvkit.py

# Auto-generated with h2o


function _cnvkit.py {
    local line state

    function _commands {
        local -a commands
        commands=(
            'batch:Run the complete CNVkit pipeline on one or more BAM files.'
            'target:Transform bait intervals into targets more suitable for CNVkit.'
            'access:List the locations of accessible sequence regions in a FASTA file.'
            'antitarget:Derive off-target ("antitarget") bins from target regions.'
            'autobin:Quickly calculate reasonable bin sizes from BAM read counts.'
            'coverage:Calculate coverage in the given regions from BAM read depths.'
            'reference:Compile a coverage reference from the given files (normal samples).'
            'fix:Combine target and antitarget coverages and correct for biases.'
            'segment:Infer copy number segments from the given coverage table.'
            'call:Call copy number variants from segmented log2 ratios.'
            'diagram:Draw copy number (log2 coverages, segments) on chromosomes as a diagram.'
            'scatter:Plot probe log2 coverages and segmentation calls together.'
            'heatmap:Plot copy number for multiple samples as a heatmap.'
            'breaks:List the targeted genes in which a copy number breakpoint occurs.'
            'genemetrics:Identify targeted genes with copy number gain or loss.'
            'sex:Guess samples'\'' sex from the relative coverage of chromosomes X and Y.'
            'metrics:Compute coverage deviations and other metrics for self-evaluation.'
            'segmetrics:Compute segment-level metrics from bin-level log2 ratios.'
            'bintest:Test for single-bin copy number alterations.'
            'import-picard:Convert Picard CalculateHsMetrics tabular output to CNVkit .cnn files.'
            'import-seg:Convert a SEG file to CNVkit .cns files.'
            'import-theta:Convert THetA output to a BED-like, CNVkit-like tabular format.'
            'import-rna:Convert a cohort of per-gene log2 ratios to CNVkit .cnr format.'
            'export:Convert CNVkit output files to another format.'
            'version:Display this program'\''s version.'
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-h,--help}'[show this help message and exit]' \
        ': :->cmd' \
        '*:: :->subcmd'

    case $state in
    (cmd)
        _commands
        ;;
    (subcmd)
        case $line[1] in
        (batch)
            _cnvkit.py_batch
            ;;

        (target)
            _cnvkit.py_target
            ;;

        (access)
            _cnvkit.py_access
            ;;

        (antitarget)
            _cnvkit.py_antitarget
            ;;

        (autobin)
            _cnvkit.py_autobin
            ;;

        (coverage)
            _cnvkit.py_coverage
            ;;

        (reference)
            _cnvkit.py_reference
            ;;

        (fix)
            _cnvkit.py_fix
            ;;

        (segment)
            _cnvkit.py_segment
            ;;

        (call)
            _cnvkit.py_call
            ;;

        (diagram)
            _cnvkit.py_diagram
            ;;

        (scatter)
            _cnvkit.py_scatter
            ;;

        (heatmap)
            _cnvkit.py_heatmap
            ;;

        (breaks)
            _cnvkit.py_breaks
            ;;

        (genemetrics)
            _cnvkit.py_genemetrics
            ;;

        (sex)
            _cnvkit.py_sex
            ;;

        (metrics)
            _cnvkit.py_metrics
            ;;

        (segmetrics)
            _cnvkit.py_segmetrics
            ;;

        (bintest)
            _cnvkit.py_bintest
            ;;

        (import-picard)
            _cnvkit.py_import-picard
            ;;

        (import-seg)
            _cnvkit.py_import-seg
            ;;

        (import-theta)
            _cnvkit.py_import-theta
            ;;

        (import-rna)
            _cnvkit.py_import-rna
            ;;

        (export)
            _cnvkit.py_export
            ;;

        (version)
            _cnvkit.py_version
            ;;

        esac
        ;;
     esac

}

function _cnvkit.py_batch {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-m,--seq-method,--method}'[Sequencing assay type: hybridization capture ('\''hybrid'\''), targeted amplicon sequencing ('\''amplicon'\''), or whole genome sequencing ('\''wgs'\''). Determines whether and how to use antitarget bins. \[Default: hybrid\]]' \
        '--segment-method[Method used in the '\''segment'\'' step. \[Default: cbs\]]' \
        {-y,--male-reference,--haploid-x-reference}'[Use or assume a male reference (i.e. female samples will have +1 log-CNR of chrX; otherwise male samples would have -1 chrX).]' \
        {-c,--count-reads}'[Get read depths by counting read midpoints within each bin. (An alternative algorithm).]' \
        '--drop-low-coverage[Drop very-low-coverage bins before segmentation to avoid false-positive deletions in poor-quality tumor samples.]' \
        {-p,--processes}'[Number of subprocesses used to running each of the BAM files in parallel. Without an argument, use the maximum number of available CPUs. \[Default: process each BAM in serial\]]' \
        '--rscript-path[Path to the Rscript excecutable to use for running R code. Use this option to specify a non-default R installation. \[Default: Rscript\]]':file:_files \
        {-n,--normal}'[Normal samples (.bam) used to construct the pooled, paired, or flat reference. If this option is used but no filenames are given, a "flat" reference will be built. Otherwise, all filenames following this option will be used.]':file:_files \
        {-f,--fasta}'[Reference genome, FASTA format (e.g. UCSC hg19.fa)]':file:_files \
        {-t,--targets}'[Target intervals (.bed or .list)]':file:_files \
        {-a,--antitargets}'[Antitarget intervals (.bed or .list)]':file:_files \
        '--annotate[Use gene models from this file to assign names to the target regions. Format: UCSC refFlat.txt or ensFlat.txt file (preferred), or BED, interval list, GFF, or similar.]':file:_files \
        '--short-names[Reduce multi-accession bait labels to be short and consistent.]' \
        '--target-avg-size[Average size of split target bins (results are approximate).]' \
        {-g,--access}'[Regions of accessible sequence on chromosomes (.bed), as output by the '\''access'\'' command.]':file:_files \
        '--antitarget-avg-size[Average size of antitarget bins (results are approximate).]' \
        '--antitarget-min-size[Minimum size of antitarget bins (smaller regions are dropped).]' \
        '--output-reference[Output filename/path for the new reference file being created. (If given, ignores the -o/--output-dir option and will write the file to the given path. Otherwise, "reference.cnn" will be created in the current directory or specified output directory.)]':file:_files \
        '--cluster[Calculate and use cluster-specific summary stats in the reference pool to normalize samples.]' \
        {-r,--reference}'[Copy number reference file (.cnn).]' \
        {-d,--output-dir}'[Output directory.]':file:_files \
        '--scatter[Create a whole-genome copy ratio profile as a PDF scatter plot.]' \
        '--diagram[Create an ideogram of copy ratios on chromosomes as a PDF.]' \
        "*: :_files"

}

function _cnvkit.py_target {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--annotate[Use gene models from this file to assign names to the target regions. Format: UCSC refFlat.txt or ensFlat.txt file (preferred), or BED, interval list, GFF, or similar.]' \
        '--short-names[Reduce multi-accession bait labels to be short and consistent.]' \
        '--split[Split large tiled intervals into smaller, consecutive targets.]' \
        {-a,--avg-size}'[Average size of split target bins (results are approximate). \[Default: 266.6666666666667\]]' \
        {-o,--output}'[Output file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_access {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-s,--min-gap-size}'[Minimum gap size between accessible sequence regions. Regions separated by less than this distance will be joined together. \[Default: 5000\]]' \
        {-x,--exclude}'[Additional regions to exclude, in BED format. Can be used multiple times.]' \
        {-o,--output}'[Output file name]':file:_files \
        "*: :_files"

}

function _cnvkit.py_antitarget {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-g,--access}'[Regions of accessible sequence on chromosomes (.bed), as output by genome2access.py.]':file:_files \
        {-a,--avg-size}'[Average size of antitarget bins (results are approximate). \[Default: 150000\]]' \
        {-m,--min-size}'[Minimum size of antitarget bins (smaller regions are dropped). \[Default: 1/16 avg size, calculated\]]' \
        {-o,--output}'[Output file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_autobin {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-f,--fasta}'[Reference genome, FASTA format (e.g. UCSC hg19.fa)]':file:_files \
        {-m,--method}'[Sequencing protocol: hybridization capture ('\''hybrid'\''), targeted amplicon sequencing ('\''amplicon'\''), or whole genome sequencing ('\''wgs'\''). Determines whether and how to use antitarget bins. \[Default: hybrid\]]' \
        {-g,--access}'[Sequencing-accessible genomic regions, or exons to use as possible targets (e.g. output of refFlat2bed.py)]':file:_files \
        {-t,--targets}'[Potentially targeted genomic regions, e.g. all possible exons for the reference genome. Format: BED, interval list, etc.]' \
        {-b,--bp-per-bin}'[Desired average number of sequencing read bases mapped to each bin. \[Default: 100000.0\]]' \
        '--target-max-size[Maximum size of target bins. \[Default: 20000\]]' \
        '--target-min-size[Minimum size of target bins. \[Default: 20\]]' \
        '--antitarget-max-size[Maximum size of antitarget bins. \[Default: 500000\]]' \
        '--antitarget-min-size[Minimum size of antitarget bins. \[Default: 500\]]' \
        '--annotate[Use gene models from this file to assign names to the target regions. Format: UCSC refFlat.txt or ensFlat.txt file (preferred), or BED, interval list, GFF, or similar.]':file:_files \
        '--short-names[Reduce multi-accession bait labels to be short and consistent.]' \
        '--target-output-bed[Filename for target BED output. If not specified, constructed from the input file basename.]':file:_files \
        '--antitarget-output-bed[Filename for antitarget BED output. If not specified, constructed from the input file basename.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_coverage {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-f,--fasta}'[Reference genome, FASTA format (e.g. UCSC hg19.fa)]':file:_files \
        {-c,--count}'[Get read depths by counting read midpoints within each bin. (An alternative algorithm).]' \
        {-q,--min-mapq}'[Minimum mapping quality score (phred scale 0-60) to count a read for coverage depth. \[Default: 0\]]' \
        {-o,--output}'[Output file name.]':file:_files \
        {-p,--processes}'[Number of subprocesses to calculate coverage in parallel. Without an argument, use the maximum number of available CPUs. \[Default: use 1 process\]]' \
        "*: :_files"

}

function _cnvkit.py_reference {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-f,--fasta}'[Reference genome, FASTA format (e.g. UCSC hg19.fa)]' \
        {-o,--output}'[Output file name.]':file:_files \
        {-c,--cluster}'[Calculate and store summary stats for clustered subsets of the normal samples with similar coverage profiles.]' \
        '--min-cluster-size[Minimum cluster size to keep in reference profiles.]' \
        {-x,--sample-sex,-g,--gender}'[Specify the chromosomal sex of all given samples as male or female. (Default: guess each sample from coverage of X and Y chromosomes).]' \
        {-y,--male-reference,--haploid-x-reference}'[Create a male reference: shift female samples'\'' chrX log-coverage by -1, so the reference chrX average is -1. Otherwise, shift male samples'\'' chrX by +1, so the reference chrX average is 0.]' \
        {-t,--targets}'[Target intervals (.bed or .list)]' \
        {-a,--antitargets}'[Antitarget intervals (.bed or .list)]' \
        '--no-gc[Skip GC correction.]' \
        '--no-edge[Skip edge-effect correction.]' \
        '--no-rmask[Skip RepeatMasker correction.]' \
        "*: :_files"

}

function _cnvkit.py_fix {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-c,--cluster}'[Compare and use cluster-specific values present in the reference profile. (Requires that the reference profile was built with the --cluster option.)]' \
        {-i,--sample-id}'[Sample ID for target/antitarget files. Otherwise inferred from file names.]' \
        '--no-gc[Skip GC correction.]' \
        '--no-edge[Skip edge-effect correction.]' \
        '--no-rmask[Skip RepeatMasker correction.]' \
        {-o,--output}'[Output file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_segment {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-o,--output}'[Output table file name (CNR-like table of segments, .cns).]':file:_files \
        {-d,--dataframe}'[File name to save the raw R dataframe emitted by CBS or Fused Lasso. (Useful for debugging.)]' \
        {-m,--method}'[Segmentation method (see docs), or '\''none'\'' for chromosome arm-level averages as segments. \[Default: cbs\]]' \
        {-t,--threshold}'[Significance threshold (p-value or FDR, depending on method) to accept breakpoints during segmentation. For HMM methods, this is the smoothing window size.]' \
        '--drop-low-coverage[Drop very-low-coverage bins before segmentation to avoid false-positive deletions in poor-quality tumor samples.]' \
        '--drop-outliers[Drop outlier bins more than this many multiples of the 95th quantile away from the average within a rolling window. Set to 0 for no outlier filtering. \[Default: 10\]]' \
        '--rscript-path[Path to the Rscript excecutable to use for running R code. Use this option to specify a non-default R installation. \[Default: Rscript\]]':file:_files \
        {-p,--processes}'[Number of subprocesses to segment in parallel. Give 0 or a negative value to use the maximum number of available CPUs. \[Default: use 1 process\]]' \
        '--smooth-cbs[Perform an additional smoothing before CBS segmentation, which in some cases may increase the sensitivity. Used only for CBS method.]' \
        {-v,--vcf}'[VCF file name containing variants for segmentation by allele frequencies.]':file:_files \
        {-i,--sample-id}'[Specify the name of the sample in the VCF (-v/--vcf) to use for b-allele frequency extraction and as the default plot title.]' \
        {-n,--normal-id}'[Corresponding normal sample ID in the input VCF (-v/--vcf). This sample is used to select only germline SNVs to plot b-allele frequencies.]' \
        '--min-variant-depth[Minimum read depth for a SNV to be displayed in the b-allele frequency plot. \[Default: 20\]]' \
        {-z,--zygosity-freq}'[Ignore VCF'\''s genotypes (GT field) and instead infer zygosity from allele frequencies. \[Default if used without a number: 0.25\]]' \
        "*: :_files"

}

function _cnvkit.py_call {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--center[Re-center the log2 ratio values using this estimator of the center or average value. ('\''median'\'' if no argument given.)]' \
        '--center-at[Subtract a constant number from all log2 ratios. For "manual" re-centering, in case the --center option gives unsatisfactory results.)]' \
        '--filter[Merge segments flagged by the specified filter(s) with the adjacent segment(s).]' \
        {-m,--method}'[Calling method. \[Default: threshold\]]' \
        {-t,--thresholds}'[Hard thresholds for calling each integer copy number, separated by commas. Use the '\''='\'' sign on the command line, e.g.: -t=-1,0,1 \[Default: -1.1,-0.25,0.2,0.7\]]' \
        '--ploidy[Ploidy of the sample cells. \[Default: 2\]]' \
        '--purity[Estimated tumor cell fraction, a.k.a. purity or cellularity.]' \
        '--drop-low-coverage[Drop very-low-coverage bins before segmentation to avoid false-positive deletions in poor-quality tumor samples.]' \
        {-x,--sample-sex,-g,--gender}'[Specify the sample'\''s chromosomal sex as male or female. (Otherwise guessed from X and Y coverage).]' \
        {-y,--male-reference,--haploid-x-reference}'[Was a male reference used? If so, expect half ploidy on chrX and chrY; otherwise, only chrY has half ploidy. In CNVkit, if a male reference was used, the "neutral" copy number (ploidy) of chrX is 1; chrY is haploid for either reference sex.]' \
        {-o,--output}'[Output table file name (CNR-like table of segments, .cns).]':file:_files \
        {-v,--vcf}'[VCF file name containing variants for calculation of b-allele frequencies.]':file:_files \
        {-i,--sample-id}'[Name of the sample in the VCF (-v/--vcf) to use for b-allele frequency extraction.]' \
        {-n,--normal-id}'[Corresponding normal sample ID in the input VCF (-v/--vcf). This sample is used to select only germline SNVs to calculate b-allele frequencies.]' \
        '--min-variant-depth[Minimum read depth for a SNV to be used in the b-allele frequency calculation. \[Default: 20\]]' \
        {-z,--zygosity-freq}'[Ignore VCF'\''s genotypes (GT field) and instead infer zygosity from allele frequencies. \[Default if used without a number: 0.25\]]' \
        "*: :_files"

}

function _cnvkit.py_diagram {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-s,--segment}'[Segmentation calls (.cns), the output of the '\''segment'\'' command.]' \
        {-t,--threshold}'[Copy number change threshold to label genes. \[Default: 0.5\]]' \
        {-m,--min-probes}'[Minimum number of covered probes to label a gene. \[Default: 3\]]' \
        {-y,--male-reference,--haploid-x-reference}'[Assume inputs were normalized to a male reference (i.e. female samples will have +1 log-CNR of chrX; otherwise male samples would have -1 chrX).]' \
        {-x,--sample-sex,-g,--gender}'[Specify the sample'\''s chromosomal sex as male or female. (Otherwise guessed from X and Y coverage).]' \
        '--no-shift-xy[Don'\''t adjust the X and Y chromosomes according to sample sex.]' \
        {-o,--output}'[Output PDF file name.]':file:_files \
        '--title[Plot title. \[Default: sample ID, from filename or -i\]]' \
        "*: :_files"

}

function _cnvkit.py_scatter {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-s,--segment}'[Segmentation calls (.cns), the output of the '\''segment'\'' command.]':file:_files \
        {-c,--chromosome}'[Chromosome or chromosomal range, e.g. '\''chr1'\'' or '\''chr1:2333000-2444000'\'', to display. If a range is given, all targeted genes in this range will be shown, unless -g/--gene is also given.]' \
        {-g,--gene}'[Name of gene or genes (comma-separated) to display.]' \
        {-l,--range-list}'[File listing the chromosomal ranges to display, as BED, interval list or '\''chr:start-end'\'' text. Creates focal plots similar to -c/--chromosome for each listed region, combined into a multi-page PDF. The output filename must also be specified (-o/--output).]' \
        {-w,--width}'[Width of margin to show around the selected gene(s) (-g/--gene) or small chromosomal region (-c/--chromosome). \[Default: 1000000\]]' \
        {-o,--output}'[Output PDF file name.]':file:_files \
        {-a,--antitarget-marker}'[Plot antitargets using this symbol when plotting in a selected chromosomal region (-g/--gene or -c/--chromosome). \[Default: same as targets\]]' \
        '--by-bin[Plot data x-coordinates by bin indices instead of genomic coordinates. All bins will be shown with equal width, no blank regions will be shown, and x-axis values indicate bin number (within chromosome) instead of genomic position.]' \
        '--segment-color[Plot segment lines in this color. Value can be any string accepted by matplotlib, e.g. '\''red'\'' or '\''#CC0000'\''.]' \
        '--title[Plot title. \[Default: sample ID, from filename or -i\]]' \
        {-t,--trend}'[Draw a smoothed local trendline on the scatter plot.]' \
        '--y-max[y-axis upper limit.]' \
        '--y-min[y-axis lower limit.]' \
        {-v,--vcf}'[VCF file name containing variants to plot for SNV b-allele frequencies.]':file:_files \
        {-i,--sample-id}'[Name of the sample in the VCF to use for b-allele frequency extraction and as the default plot title.]' \
        {-n,--normal-id}'[Corresponding normal sample ID in the input VCF. This sample is used to select only germline SNVs to plot.]' \
        {-m,--min-variant-depth}'[Minimum read depth for a SNV to be used in the b-allele frequency calculation. \[Default: 20\]]' \
        {-z,--zygosity-freq}'[Ignore VCF'\''s genotypes (GT field) and instead infer zygosity from allele frequencies. \[Default if used without a number: 0.25\]]' \
        "*: :_files"

}

function _cnvkit.py_heatmap {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-b,--by-bin}'[Plot data x-coordinates by bin indices instead of genomic coordinates. All bins will be shown with equal width, no blank regions will be shown, and x-axis values indicate bin number (within chromosome) instead of genomic position.]' \
        {-c,--chromosome}'[Chromosome (e.g. '\''chr1'\'') or chromosomal range (e.g. '\''chr1:2333000-2444000'\'') to display. If a range is given, all targeted genes in this range will be shown, unless '\''--gene'\''/'\''-g'\'' is already given.]' \
        {-d,--desaturate}'[Tweak color saturation to focus on significant changes.]' \
        {-y,--male-reference,--haploid-x-reference}'[Assume inputs were normalized to a male reference (i.e. female samples will have +1 log-CNR of chrX; otherwise male samples would have -1 chrX).]' \
        {-x,--sample-sex,-g,--gender}'[Specify the chromosomal sex of all given samples as male or female. (Default: guess each sample from coverage of X and Y chromosomes).]' \
        '--no-shift-xy[Don'\''t adjust the X and Y chromosomes according to sample sex.]' \
        {-o,--output}'[Output PDF file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_breaks {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-m,--min-probes}'[Minimum number of within-gene probes on both sides of a breakpoint to report it. \[Default: 1\]]' \
        {-o,--output}'[Output table file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_genemetrics {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-s,--segment}'[Segmentation calls (.cns), the output of the '\''segment'\'' command).]' \
        {-t,--threshold}'[Copy number change threshold to report a gene gain/loss. \[Default: 0.2\]]' \
        {-m,--min-probes}'[Minimum number of covered probes to report a gain/loss. \[Default: 3\]]' \
        '--drop-low-coverage[Drop very-low-coverage bins before segmentation to avoid false-positive deletions in poor-quality tumor samples.]' \
        {-y,--male-reference,--haploid-x-reference}'[Assume inputs were normalized to a male reference (i.e. female samples will have +1 log-coverage of chrX; otherwise male samples would have -1 chrX).]' \
        {-x,--sample-sex,-g,--gender}'[Specify the sample'\''s chromosomal sex as male or female. (Otherwise guessed from X and Y coverage).]' \
        {-o,--output}'[Output table file name.]':file:_files \
        '--mean[Mean log2-ratio (unweighted).]' \
        '--median[Median.]' \
        '--mode[Mode (i.e. peak density of log2 ratios).]' \
        '--ttest[One-sample t-test of bin log2 ratios versus 0.0.]' \
        '--stdev[Standard deviation.]' \
        '--sem[Standard error of the mean.]' \
        '--mad[Median absolute deviation (standardized).]' \
        '--mse[Mean squared error.]' \
        '--iqr[Inter-quartile range.]' \
        '--bivar[Tukey'\''s biweight midvariance.]' \
        '--ci[Confidence interval (by bootstrap).]' \
        '--pi[Prediction interval.]' \
        {-a,--alpha}'[Level to estimate confidence and prediction intervals; use with --ci and --pi. \[Default: 0.05\]]' \
        {-b,--bootstrap}'[Number of bootstrap iterations to estimate confidence interval; use with --ci. \[Default: 100\]]' \
        "*: :_files"

}

function _cnvkit.py_sex {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-y,--male-reference,--haploid-x-reference}'[Assume inputs were normalized to a male reference (i.e. female samples will have +1 log-coverage of chrX; otherwise male samples would have -1 chrX).]' \
        {-o,--output}'[Output table file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_metrics {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-s,--segments}'[One or more segmentation data files (*.cns, output of the '\''segment'\'' command).]' \
        '--drop-low-coverage[Drop very-low-coverage bins before calculations to reduce negative "fat tail" of bin log2 values in poor-quality tumor samples.]' \
        {-o,--output}'[Output table file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_segmetrics {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-s,--segments}'[Segmentation data file (*.cns, output of the '\''segment'\'' command).]' \
        '--drop-low-coverage[Drop very-low-coverage bins before calculations to avoid negative bias in poor-quality tumor samples.]' \
        {-o,--output}'[Output table file name.]':file:_files \
        '--mean[Mean log2 ratio (unweighted).]' \
        '--median[Median.]' \
        '--mode[Mode (i.e. peak density of bin log2 ratios).]' \
        '--t-test[One-sample t-test of bin log2 ratios versus 0.0.]' \
        '--stdev[Standard deviation.]' \
        '--sem[Standard error of the mean.]' \
        '--mad[Median absolute deviation (standardized).]' \
        '--mse[Mean squared error.]' \
        '--iqr[Inter-quartile range.]' \
        '--bivar[Tukey'\''s biweight midvariance.]' \
        '--ci[Confidence interval (by bootstrap).]' \
        '--pi[Prediction interval.]' \
        {-a,--alpha}'[Level to estimate confidence and prediction intervals; use with --ci and --pi. \[Default: 0.05\]]' \
        {-b,--bootstrap}'[Number of bootstrap iterations to estimate confidence interval; use with --ci. \[Default: 100\]]' \
        '--smooth-bootstrap[Apply Gaussian noise to bootstrap samples, a.k.a. smoothed bootstrap, to estimate confidence interval; use with --ci.]' \
        "*: :_files"

}

function _cnvkit.py_bintest {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-s,--segment}'[Segmentation calls (.cns), the output of the '\''segment'\'' command).]':file:_files \
        {-a,--alpha}'[Significance threhold. \[Default: 0.005\]]' \
        {-t,--target}'[Test target bins only; ignore off-target bins.]' \
        {-o,--output}'[Output filename.]' \
        "*: :_files"

}

function _cnvkit.py_import-picard {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-d,--output-dir}'[Output directory name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_import-seg {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-c,--chromosomes}'[Mapping of chromosome indexes to names. Syntax: "from1:to1,from2:to2". Or use "human" for the preset: "23:X,24:Y,25:M".]' \
        {-p,--prefix}'[Prefix to add to chromosome names (e.g '\''chr'\'' to rename '\''8'\'' in the SEG file to '\''chr8'\'' in the output).]' \
        '--from-log10[Convert base-10 logarithm values in the input to base-2 logs.]' \
        {-d,--output-dir}'[Output directory name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_import-theta {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--ploidy[Ploidy of normal cells. \[Default: 2\]]' \
        {-d,--output-dir}'[Output directory name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_import-rna {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-f,--format}'[Input format name: '\''rsem'\'' for RSEM gene-level read counts (*_rsem.genes.results), or '\''counts'\'' for generic 2-column gene IDs and their read counts (e.g. TCGA level 2 RNA expression).]' \
        {-g,--gene-resource}'[Location of gene info table from Ensembl BioMart.]':file:_files \
        {-c,--correlations}'[Correlation of each gene'\''s copy number with expression. Output of cnv_expression_correlate.py.]':file:_files \
        '--max-log2[Maximum log2 ratio in output. Observed values above this limit will be replaced with this value. \[Default: 3.0\]]' \
        {-n,--normal}'[Normal samples (same format as `gene_counts`) to be used as a control to when normalizing and re-centering gene read depth ratios. All filenames following this option will be used.]' \
        {-d,--output-dir}'[Directory to write a CNVkit .cnr file for each input sample. \[Default: .\]]':file:_files \
        {-o,--output}'[Output file name (summary table).]':file:_files \
        '--no-gc[Skip GC correction.]' \
        '--no-txlen[Skip transcript length correction.]' \
        "*: :_files"

}


function _cnvkit.py_export {
    local line state

    function _commands {
        local -a commands
        commands=(
            'bed:Convert segments to BED format. Input is a segmentation file (.cns) where, preferably, log2 ratios have already been adjusted to integer absolute values using the '\''call'\'' command.'
            'seg:Convert segments to SEG format. Compatible with IGV and GenePattern.'
            'vcf:Convert segments to VCF format. Input is a segmentation file (.cns) where, preferably, log2 ratios have already been adjusted to integer absolute values using the '\''call'\'' command.'
            'theta:Convert segments to THetA2 input file format (*.input).'
            'nexus-basic:Convert bin-level log2 ratios to Nexus Copy Number "basic" format.'
            'nexus-ogt:Convert log2 ratios and b-allele freqs to Nexus "Custom-OGT" format.'
            'cdt:Convert log2 ratios to CDT format. Compatible with Java TreeView.'
            'jtv:Convert log2 ratios to Java TreeView'\''s native format.'
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-h,--help}'[show this help message and exit]' \
        ': :->cmd' \
        '*:: :->subcmd'

    case $state in
    (cmd)
        _commands
        ;;
    (subcmd)
        case $line[1] in
        (bed)
            _cnvkit.py_export_bed
            ;;

        (seg)
            _cnvkit.py_export_seg
            ;;

        (vcf)
            _cnvkit.py_export_vcf
            ;;

        (theta)
            _cnvkit.py_export_theta
            ;;

        (nexus-basic)
            _cnvkit.py_export_nexus-basic
            ;;

        (nexus-ogt)
            _cnvkit.py_export_nexus-ogt
            ;;

        (cdt)
            _cnvkit.py_export_cdt
            ;;

        (jtv)
            _cnvkit.py_export_jtv
            ;;

        esac
        ;;
     esac

}

function _cnvkit.py_export_bed {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-i,--sample-id}'[Identifier to write in the 4th column of the BED file. \[Default: use the sample ID, taken from the file name\]]' \
        '--label-genes[Show gene names in the 4th column of the BED file. (This is a bad idea if >1 input files are given.)]' \
        '--ploidy[Ploidy of the sample cells. \[Default: 2\]]' \
        {-x,--sample-sex,-g,--gender}'[Specify the sample'\''s chromosomal sex as male or female. (Otherwise guessed from X and Y coverage).]' \
        '--show[Which segmented regions to show: '\''all'\'' = all segment regions; '\''variant'\'' = CNA regions with non-neutral copy number; '\''ploidy'\'' = CNA regions with non-default ploidy. \[Default: ploidy\]]' \
        {-y,--male-reference,--haploid-x-reference}'[Was a male reference used? If so, expect half ploidy on chrX and chrY; otherwise, only chrY has half ploidy. In CNVkit, if a male reference was used, the "neutral" copy number (ploidy) of chrX is 1; chrY is haploid for either reference sex.]' \
        {-o,--output}'[Output file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_export_seg {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--enumerate-chroms[Replace chromosome names with sequential integer IDs.]' \
        {-o,--output}'[Output file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_export_vcf {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '--cnr[Bin-level copy ratios (*.cnr). Used to indicate fuzzy boundaries for segments in the output VCF via the CIPOS and CIEND tags.]' \
        {-i,--sample-id}'[Sample name to write in the genotype field of the output VCF file. \[Default: use the sample ID, taken from the file name\]]' \
        '--ploidy[Ploidy of the sample cells. \[Default: 2\]]' \
        {-x,--sample-sex,-g,--gender}'[Specify the sample'\''s chromosomal sex as male or female. (Otherwise guessed from X and Y coverage).]' \
        {-y,--male-reference,--haploid-x-reference}'[Was a male reference used? If so, expect half ploidy on chrX and chrY; otherwise, only chrY has half ploidy. In CNVkit, if a male reference was used, the "neutral" copy number (ploidy) of chrX is 1; chrY is haploid for either reference sex.]' \
        {-o,--output}'[Output file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_export_theta {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-r,--reference}'[Reference copy number profile (.cnn), or normal-sample bin-level log2 copy ratios (.cnr). Use if the tumor_segment input file does not contain a "weight" column.]' \
        {-o,--output}'[Output file name.]':file:_files \
        {-v,--vcf}'[VCF file containing SNVs observed in both the tumor and normal samples. Tumor sample ID should match the `tumor_segment` filename or be specified with -i/--sample-id.]' \
        {-i,--sample-id}'[Specify the name of the tumor sample in the VCF (given with -v/--vcf). \[Default: taken the tumor_segment file name\]]' \
        {-n,--normal-id}'[Corresponding normal sample ID in the input VCF.]' \
        {-m,--min-variant-depth}'[Minimum read depth for a SNP in the VCF to be counted. \[Default: 20\]]' \
        {-z,--zygosity-freq}'[Ignore VCF'\''s genotypes (GT field) and instead infer zygosity from allele frequencies. \[Default if used without a number: 0.25\]]' \
        "*: :_files"

}

function _cnvkit.py_export_nexus-basic {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-o,--output}'[Output file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_export_nexus-ogt {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-i,--sample-id}'[Specify the name of the sample in the VCF to use to extract b-allele frequencies.]' \
        {-n,--normal-id}'[Corresponding normal sample ID in the input VCF.]' \
        {-m,--min-variant-depth}'[Minimum read depth for a SNV to be included in the b-allele frequency calculation. \[Default: 20\]]' \
        {-z,--zygosity-freq}'[Ignore VCF'\''s genotypes (GT field) and instead infer zygosity from allele frequencies. \[Default if used without a number: 0.25\]]' \
        {-w,--min-weight}'[Minimum weight (between 0 and 1) for a bin to be included in the output. \[Default: 0.0\]]' \
        {-o,--output}'[Output file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_export_cdt {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-o,--output}'[Output file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_export_jtv {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        {-o,--output}'[Output file name.]':file:_files \
        "*: :_files"

}

function _cnvkit.py_version {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        "*: :_files"

}

_cnvkit.py "$@"

