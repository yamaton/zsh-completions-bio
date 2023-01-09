#compdef _annotatePeaks.pl annotatePeaks.pl

# Auto-generated with h2o


function _annotatePeaks.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-gtf[Use -gff and -gff3 if appropriate, but GTF is better]':file:_files \
        '-gid[by default the GTF file is processed by transcript_id, use this option for gene_id]' \
        '-ann[created by assignGenomeAnnotation, see website]':file:_files \
        '-list[subset of genes to perform analysis \[unigene, gene id, accession, probe, etc.\], default = all promoters]' \
        '-cTSS[position file i.e. peak file> should be centered on TSS]' \
        '-mask[Masked repeats, can also add '\''r'\'' to end of genome name]' \
        '-m[list of motifs to find in peaks]':file:_files \
        '-mscore[reports the highest log-odds score within the peak]' \
        '-nmotifs[reports the number of motifs per peak]' \
        '-mdist[reports distance to closest motif]' \
        '-mfasta[reports sites in a fasta file - for building new motifs]':file:_files \
        '-fm[list of motifs to filter from above]':file:_files \
        '-rmrevopp[only count sites found within <#> on both strands once, i.e. palindromic]' \
        '-matrix[outputs a motif co-occurrence files]' \
        '-matrixMinDist[minimum distance between motif pairs - to avoid overlap, default: 4]' \
        '-matrixMaxDist[maximum distance between motif pairs]' \
        '-mbed[Output motif positions to a BED file to load at UCSC (or -mpeak)]':file:_files \
        '-mlogic[will output stats on common motif orientations]':file:_files \
        '-d[list of experiment directories to show tag counts for]':file:_files \
        '-bedGraph[read coverage counts from bedGraph files]':file:_files \
        '-wig[read coverage counts from wiggle files]':file:_files \
        '-p[to find nearest peaks]':file:_files \
        '-pdist[to report only distance]' \
        '-pdist2[gives directional distance]' \
        '-pcount[to report number of peaks within region]' \
        '-vcf[annotate peaks with genetic variation infomation, one col per individual]':file:_files \
        '-editDistance[Computes the # bp changes relative to reference]' \
        '-individuals[restrict analysis to these individuals]' \
        '-gene[Adds additional data to result based on the closest gene.]':file:_files \
        '-go[perform GO analysis using genes near peaks]':file:_files \
        '-genomeOntology[perform genomeOntology analysis on peaks]':file:_files \
        '-gsize[Genome size for genomeOntology analysis, default: 2e9]' \
        '-hist[generate histograms of position dependent features relative to the center of peaks]' \
        '-nuc[calculated mononucleotide frequencies at each position]' \
        '-di[calculated dinucleotide frequencies at each position]' \
        '-histNorm[normalize the total tag count for each region to 1, where <#> is the minimum tag total per region - use to avoid tag spikes from low coverage]' \
        '-ghist[outputs profiles for each gene, for peak shape clustering]' \
        '-rm[remove occurrences of same motif that occur within # bp]' \
        '-center[This will re-center peaks on the specified motif, or remove peak if there is no motif in the peak.]':file:_files \
        '-mirror[flips the position]' \
        '-multi[returns genomic positions of all sites instead of just the closest to center]' \
        '-cmpGenome[Genomes to compare for sequence/motifs]' \
        '-cmpLiftover[Genomes to compare for sequence/motifs]' \
        '-fpkm[normalize read counts to million reads or fragments per kilobase mapped]' \
        '-raw[do not adjust the tag counts based on total tags sequenced, -noadj works too]' \
        '-norm[normalize tags to this tag count, default=1e7, 0=average tag count in all directories]' \
        '-normLength[Fragment length to normlize to for experiments with different lens, def: 100]' \
        '-log[output tag counts as log2(x+1+rand) values - for scatter plots]' \
        '-sqrt[output tag counts as sqrt(x+rand) values - for scatter plots]' \
        '-ratio[process tag values as ratios - i.e. chip-seq, or mCpG/CpG]' \
        '-rlog[quantile/variance normalization on reported genes using DESeq2 rlog funcition, needs R]' \
        '-vst[quantile/variance normalization on reported genes using DESeq2 vst function, needs R]' \
        {-len,-fragLength}'[Fragment length, default=auto, might want to set to 1 for 5'\''RNA]' \
        '-len[Fragment length, default=auto, might want to set to 1 for 5'\''RNA]' \
        '-size[Peak size\[from center of peak\], default=inferred from peak file]' \
        '-strand[Count tags on specific strands relative to peak, default: both]' \
        '-pc[maximum number of tags to count per bp, default=0 \[no maximum\], -tbp <#> works too]' \
        '-CpG[Calculate CpG/GC content]' \
        '-nfr[report nuclesome free region scores instead of tag counts, also -nfrSize <#>]' \
        '-norevopp[do not search for motifs on the opposite strand \[works with -center too\]]' \
        '-gwasCatalog[list overlapping GWAS risk SNPs]':file:_files \
        '-pdist[only report distance to nearest peak using -p, not peak name]' \
        '-map[mapping between peak IDs and promoter IDs, overrides closest assignment]':file:_files \
        {-noann,-nogene}'[skip genome annotation step, skip TSS annotation]' \
        '-homer1[by default, the new version of homer \[-homer2\] is used for finding motifs]' \
        '-cpu[Number of processors to use when possible - only some parts utilize multiple cores]' \
        '-noblanks[remove peaks/rows with missing data]' \
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

