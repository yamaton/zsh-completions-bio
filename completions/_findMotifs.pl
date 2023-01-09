#compdef _findMotifs.pl findMotifs.pl

# Auto-generated with h2o


function _findMotifs.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-len[motif length, default=8,10,12 \[NOTE: values greater 12 may cause the program to run out of memmory - in these cases decrease the number of sequences analyzed\]]' \
        '-bg[ids to use as background, default: all genes]':file:_files \
        '-start[offset from TSS, default=-300 \[max=based on Promoter Set\]]' \
        '-end[offset from TSS, default=50 \[max=based on Promoter Set\]]' \
        '-rna[output RNA motif logos and compare to RNA motif database, automatically sets -norevopp]' \
        {-mask,-nomask}'[use/don'\''t use repeatmasked files, default: -mask]' \
        '-S[Number of motifs to optimize, default: 25]' \
        '-mis[global optimization: searches for strings with # mismatches, default: 1]' \
        '-noconvert[will not worry about converting input files into unigene ids]' \
        '-norevopp[do not search the reverse strand for motifs]' \
        '-nomotif[don'\''t search for de novo motif enrichment]' \
        '-find[This will cause the program to only scan for motifs]':file:_files \
        '-enhancers[enhancers to include in search space, peaks/sequences should be named with a gene ID If multiple enhancers per gene, use the same gene ID, and all will be included]':file:_files \
        '-enhancersOnly[do not include promoter sequence in motif search]' \
        '-fastaBg[This is recommended for fasta based analysis]':file:_files \
        '-chopify[chops up background regions to match size of target regions i.e. if background is a full genome or all mRNAs]' \
        '-mset[check against motif collects, default: auto]' \
        '-basic[don'\''t check de novo motifs for similarity to known motifs]' \
        '-bits[scale sequence logos by information content, default: doesn'\''t scale]' \
        '-nocheck[don'\''t check for similarity between novo motif motifs and known motifs]' \
        '-mcheck[<motif file> (known motifs to check against de novo motifs,]' \
        '-noknown[don'\''t search for known motif enrichment, default: -known]' \
        '-mknown[known motifs to check for enrichment]':file:_files \
        '-nofacts[omit humor]' \
        '-seqlogo[uses weblogo/seqlogo/ghostscript to visualize motifs, default uses SVG]' \
        '-b[use binomial distribution to calculate p-values, hypergeometric is default]' \
        '-nogo[don'\''t search for gene ontology enrichment]' \
        '-humanGO[Convert IDs to human for GO analysis]' \
        '-ontology[custom ontologies for GO analysis]' \
        '-noweight[no CG correction]' \
        '-noredun[Don'\''t remove predetermined redundant promoters/sequences]' \
        '-g[input file is a group file, i.e. 1st column = id, 2nd = 0 or 1 \[1=target,0=back\]]' \
        '-cpg[use CpG% instead of GC% for sequence normalization]' \
        '-rand[randomize labels for target and backgound sequences]' \
        '-maskMotif[motifs to mask before motif finding]':file:_files \
        '-opt[motifs to optimize/change length]':file:_files \
        '-peaks[will produce peak file of promoters to use with findMotifsGenome.pl]' \
        '-nowarn[no warnings]' \
        '-keepFiles[don'\''t delete temporary files]' \
        '-dumpFasta[create target.fa and background.fa files]' \
        '-min[remove sequences shorter than #, default: 0]' \
        '-max[remove sequences longer than #, default: 1e10]' \
        '-fdr[Calculate empirical FDR for de novo discovery #=number of randomizations]' \
        '-homer2[use homer2 instead of original homer, default]' \
        '-nlen[length of lower-order oligos to normalize - general sequences, default: 3]' \
        '-olen[lower-order oligo normalization for oligo table, use if -nlen isn'\''t working well]' \
        '-p[Number of processors to use, default: 1]' \
        '-e[Maximum expected motif instance per bp in random sequence, default: 0.01]' \
        '-cache[size in MB for statistics cache, default: 500]' \
        '-quickMask[skip full masking after finding motifs, similar to original homer]' \
        '-homer1[to force the use of the original homer]' \
        '-minlp[stop looking for motifs when seed logp score gets above #, default: -10]' \
        '-float[allow adjustment of the degeneracy threshold for known motifs to improve p-value\[dangerous\]]' \
        '-depth[time spent on local optimization default: med]' \
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

