#compdef _findMotifsGenome.pl findMotifsGenome.pl

# Auto-generated with h2o


function _findMotifsGenome.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-mask[mask repeats/lower case sequence, can also add '\''r'\'' to genome, i.e. mm9r]' \
        '-bg[genomic positions to be used as background, default=automatic]':file:_files \
        '-chopify[chop up large background regions to the avg size of target regions]' \
        '-len[motif length, default=8,10,12 \[NOTE: values greater 12 may cause the program to run out of memory]' \
        '-size[fragment size to use for motif finding, default=200]' \
        '-S[Number of motifs to optimize, default: 25]' \
        '-mis[global optimization: searches for strings with # mismatches, default: 2]' \
        '-norevopp[don'\''t search reverse strand for motifs]' \
        '-nomotif[don'\''t search for de novo motif enrichment]' \
        '-rna[output RNA motif logos and compare to RNA motif database, automatically sets -norevopp]' \
        '-find[This will cause the program to only scan for motifs]':file:_files \
        '-mset[check against motif collects, default: auto]' \
        '-basic[just visualize de novo motifs, don'\''t check similarity with known motifs]' \
        '-bits[scale sequence logos by information content, default: doesn'\''t scale]' \
        '-nocheck[don'\''t search for de novo vs. known motif similarity]' \
        '-mcheck[known motifs to check against de novo motifs]':file:_files \
        '-float[allow adjustment of the degeneracy threshold for known motifs to improve p-value\[dangerous\]]' \
        '-noknown[don'\''t search for known motif enrichment, default: -known]' \
        '-mknown[known motifs to check for enrichment]':file:_files \
        '-nofacts[omit humor]' \
        '-seqlogo[use weblogo/seqlogo/ghostscript to generate logos, default uses SVG now]' \
        '-gc[use GC% for sequence content normalization, now the default]' \
        '-cpg[use CpG% instead of GC% for sequence content normalization]' \
        '-noweight[no CG correction]' \
        '-h[use hypergeometric for p-values, binomial is default]' \
        '-N[Number of sequences to use for motif finding, default=max(50k, 2x input]' \
        '-local[use local background, # of equal size regions around peaks to use i.e. 2]' \
        '-redundant[Remove redundant sequences matching greater than # percent, i.e. -redundant 0.5]' \
        '-maxN[maximum percentage of N'\''s in sequence to consider for motif finding, default: 0.7]' \
        '-maskMotif[motifs to mask before motif finding]':file:_files \
        '-opt[motifs to optimize or change length of]':file:_files \
        '-rand[randomize target and background sequences labels]' \
        '-ref[use file for target and background - first argument is list of peak ids for targets]':file:_files \
        '-oligo[perform analysis of individual oligo enrichment]' \
        '-dumpFasta[Dump fasta files for target and background sequences for use with other programs]' \
        '-preparse[force new background files to be created]' \
        '-preparsedDir[location to search for preparsed file and/or place new files]':file:_files \
        '-keepFiles[keep temporary files]' \
        '-fdr[Calculate empirical FDR for de novo discovery #=number of randomizations]' \
        '-homer2[use homer2 instead of original homer, default]' \
        '-nlen[length of lower-order oligos to normalize in background, default: -nlen 3]' \
        '-nmax[Max normalization iterations, default: 160]' \
        '-neutral[weight sequences to neutral frequencies, i.e. 25%, 6.25%, etc.]' \
        '-olen[lower-order oligo normalization for oligo table, use if -nlen isn'\''t working well]' \
        '-p[Number of processors to use, default: 1]' \
        '-e[Maximum expected motif instance per bp in random sequence, default: 0.01]' \
        '-cache[size in MB for statistics cache, default: 500]' \
        '-quickMask[skip full masking after finding motifs, similar to original homer]' \
        '-minlp[stop looking for motifs when seed logp score gets above #, default: -10]' \
        '-homer1[to force the use of the original homer]' \
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

