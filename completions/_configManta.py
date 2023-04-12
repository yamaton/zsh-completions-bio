#compdef configManta.py

# Auto-generated with h2o

function _configManta.py {
    _arguments \
        '--version[show program'\''s version number and exit]' \
        {-h,--help}'[show this help message and exit]' \
        '--config[provide a configuration file to override defaults in global config file]':file:_files \
        '--allHelp[show all extended/hidden options]' \
        {--bam,--normalBam}'[Normal sample BAM or CRAM file. May be specified more than once, multiple inputs will be treated as each BAM file representing a different sample. \[optional\] (no default)]':file:_files \
        {--tumorBam,--tumourBam}'[Tumor sample BAM or CRAM file. Only up to one tumor bam file accepted. \[optional\] (no default)]':file:_files \
        '--exome[Set options for WES input: turn off depth filters]' \
        '--rna[Set options for RNA-Seq input. Must specify exactly one bam input file]' \
        '--unstrandedRNA[Set if RNA-Seq input is unstranded: Allows splice-junctions on either strand]' \
        '--referenceFasta[samtools-indexed reference fasta file \[required\]]':file:_files \
        '--runDir[Name of directory to be created where all workflow scripts and output will be written. Each analysis requires a separate directory. (default: MantaWorkflow)]':file:_files \
        '--callRegions[Optionally provide a bgzip-compressed/tabix-indexed BED file containing the set of regions to call. No VCF output will be provided outside of these regions. The full genome will still be used to estimate statistics from the input (such as expected fragment size distribution). Only one BED file may be specified. (default: call the entire genome)]':file:_files \
        "*: :_files"

}

_configManta.py "$@"

