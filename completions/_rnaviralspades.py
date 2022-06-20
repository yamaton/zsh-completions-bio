#compdef _rnaviralspades.py rnaviralspades.py

# Auto-generated with h2o


function _rnaviralspades.py {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-o[directory to store all the resulting files (required)]':file:_files \
        '--iontorrent[this flag is required for IonTorrent data]' \
        '--test[runs SPAdes on toy dataset]' \
        {-h,--help}'[prints this usage message]' \
        {-v,--version}'[prints version]' \
        '--12[file with interlaced forward and reverse paired-end reads]':file:_files \
        '-1[file with forward paired-end reads]':file:_files \
        '-2[file with reverse paired-end reads]':file:_files \
        '-s[file with unpaired reads]':file:_files \
        '--merged[file with merged forward and reverse paired-end reads]':file:_files \
        '--pe-12[file with interlaced reads for paired-end library number <#>. Older deprecated syntax is -pe<#>-12 <filename>]':file:_files \
        '--pe-1[file with forward reads for paired-end library number <#>. Older deprecated syntax is -pe<#>-1 <filename>]':file:_files \
        '--pe-2[file with reverse reads for paired-end library number <#>. Older deprecated syntax is -pe<#>-2 <filename>]':file:_files \
        '--pe-s[file with unpaired reads for paired-end library number <#>. Older deprecated syntax is -pe<#>-s <filename>]':file:_files \
        '--pe-m[file with merged reads for paired-end library number <#>. Older deprecated syntax is -pe<#>-m <filename>]':file:_files \
        '--pe-or[orientation of reads for paired-end library number <#> (<or> = fr, rf, ff). Older deprecated syntax is -pe<#>-<or>]' \
        '--s[file with unpaired reads for single reads library number <#>. Older deprecated syntax is --s<#> <filename>]':file:_files \
        '--mp-12[file with interlaced reads for mate-pair library number <#>. Older deprecated syntax is -mp<#>-12 <filename>]':file:_files \
        '--mp-1[file with forward reads for mate-pair library number <#>. Older deprecated syntax is -mp<#>-1 <filename>]':file:_files \
        '--mp-2[file with reverse reads for mate-pair library number <#>. Older deprecated syntax is -mp<#>-2 <filename>]':file:_files \
        '--mp-s[file with unpaired reads for mate-pair library number <#>. Older deprecated syntax is -mp<#>-s <filename>]':file:_files \
        '--mp-or[orientation of reads for mate-pair library number <#> (<or> = fr, rf, ff). Older deprecated syntax is -mp<#>-<or>]' \
        '--hqmp-12[file with interlaced reads for high-quality mate-pair library number <#>. Older deprecated syntax is -hqmp<#>-12 <filename>]':file:_files \
        '--hqmp-1[file with forward reads for high-quality mate-pair library number <#>. Older deprecated syntax is -hqmp<#>-1 <filename>]':file:_files \
        '--hqmp-2[file with reverse reads for high-quality mate-pair library number <#>. Older deprecated syntax is -hqmp<#>-2 <filename>]':file:_files \
        '--hqmp-s[file with unpaired reads for high-quality mate-pair library number <#>. Older deprecated syntax is -hqmp<#>-s <filename>]':file:_files \
        '--hqmp-or[orientation of reads for high-quality mate-pair library number <#> (<or> = fr, rf, ff). Older deprecated syntax is -hqmp<#>-<or>]' \
        '--sanger[file with Sanger reads]':file:_files \
        '--pacbio[file with PacBio reads]':file:_files \
        '--nanopore[file with Nanopore reads]':file:_files \
        '--trusted-contigs[file with trusted contigs]':file:_files \
        '--untrusted-contigs[file with untrusted contigs]':file:_files \
        '--checkpoints[save intermediate check-points ('\''last'\'', '\''all'\'')]' \
        '--continue[continue run from the last available check-point (only -o should be specified)]' \
        '--restart-from[restart run with updated options and from the specified check-point ('\''as'\'', '\''k<int>'\'', '\''last'\'')]' \
        '--disable-gzip-output[forces error correction not to compress the corrected reads]' \
        '--disable-rr[disables repeat resolution stage of assembling]' \
        '--dataset[file with dataset description in YAML format]':file:_files \
        {-t,--threads}'[number of threads. \[default: 16\]]' \
        {-m,--memory}'[RAM limit for SPAdes in Gb (terminates if exceeded). \[default: 250\]]' \
        '--tmp-dir[directory for temporary files. \[default: <output_dir>/tmp\]]':file:_files \
        '-k[list of k-mer sizes (must be odd and less than 128) \[default: '\''auto'\''\]]' \
        '--phred-offset[PHRED quality offset in the input reads (33 or 64), \[default: auto-detect\]]' \
        '--custom-hmms[directory with custom hmms that replace default ones, \[default: None\]]':file:_files \
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

