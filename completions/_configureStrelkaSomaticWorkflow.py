#compdef _configureStrelkaSomaticWorkflow.py configureStrelkaSomaticWorkflow.py

# Auto-generated with h2o


function _configureStrelkaSomaticWorkflow.py {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '--version[show program'\''s version number and exit]' \
        {-h,--help}'[show this help message and exit]' \
        '--config[provide a configuration file to override defaults in global config file (~/.condax/strelka/share/strelka-2.9.10-1/bin/configureStrelkaSomaticWorkflow.py.ini)]':file:_files \
        '--allHelp[show all extended/hidden options]' \
        '--normalBam[Normal sample BAM or CRAM file. (no default)]':file:_files \
        {--tumorBam,--tumourBam}'[Tumor sample BAM or CRAM file. \[required\] (no default)]':file:_files \
        '--outputCallableRegions[Output a bed file describing somatic callable regions of the genome]' \
        '--referenceFasta[samtools-indexed reference fasta file \[required\]]':file:_files \
        '--indelCandidates[Specify a VCF of candidate indel alleles. These alleles are always evaluated but only reported in the output when they are inferred to exist in the sample. The VCF must be tabix indexed. All indel alleles must be left-shifted/normalized, any unnormalized alleles will be ignored. This option may be specified more than once, multiple input VCFs will be merged. (default: None)]':file:_files \
        '--forcedGT[Specify a VCF of candidate alleles. These alleles are always evaluated and reported even if they are unlikely to exist in the sample. The VCF must be tabix indexed. All indel alleles must be left-shifted/normalized, any unnormalized allele will trigger a runtime error. This option may be specified more than once, multiple input VCFs will be merged. Note that for any SNVs provided in the VCF, the SNV site will be reported (and for gVCF, excluded from block compression), but the specific SNV alleles are ignored. (default: None)]':file:_files \
        {--exome,--targeted}'[Set options for exome or other targeted input: note in particular that this flag turns off high-depth filters]' \
        '--callRegions[Optionally provide a bgzip-compressed/tabix-indexed BED file containing the set of regions to call. No VCF output will be provided outside of these regions. The full genome will still be used to estimate statistics from the input (such as expected depth per chromosome). Only one BED file may be specified. (default: call the entire genome)]':file:_files \
        '--runDir[Name of directory to be created where all workflow scripts and output will be written. Each analysis requires a separate directory. (default: StrelkaSomaticWorkflow)]':file:_files \
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

