#compdef _anacapa anacapa

# Auto-generated with h2o


function _anacapa {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-i[path to .fastq.gz files, if files are already compressed use flag -g (see below)]':file:_files \
        '-o[path to output directory]':file:_files \
        '-d[path to Anacapa_db]':file:_files \
        '-a[Illumina adapter type: nextera or truseq]' \
        '-t[Illumina Platform: HiSeq (2 x 150) or MiSeq ( >= 2 x 250)]' \
        '-u[If running on an HPC (e.g. UCLA'\''s Hoffman2 cluster), this is your username: e.g. eecurd]' \
        '-l[If running locally: -l (no argument needed)]' \
        '-f[path to file with forward primers in fasta format   e.g. >16s]':file:_files \
        '-r[path to file with forward primers in fasta format   e.g. >16s]':file:_files \
        '-g[If .fastq read are not compressed: -g (no argument need)]' \
        '-c[To modify the allowed cutadapt error for 3'\'' adapter and 5'\'' primer adapter trimming: 0.0 to 1.0 (default 0.3)]' \
        '-p[To modify the allowed cutadapt error 3'\'' primer sorting and trimming: 0.0 to 1.0 (default 0.3)]' \
        '-q[To modify the minimum quality score allowed: 0 - 40 (default 35)]' \
        '-m[To modify the minimum length after quality trimming: 0 - 300 (default 100)]' \
        '-x[To modify the additional 5'\'' trimming of forward reads: 0 - 300 (default HiSeq 10, default MiSeq 20)]' \
        '-y[To modify the additional 5'\'' trimming of reverse reads: 0 - 300 (default HiSeq 25, default MiSeq 50)]' \
        '-b[To modify the number of occurrences required to keep an ASV: 0 - any integer (default 0)]' \
        '-e[File path to a list of minimum length(s) reqired for paired F and R reads to overlap (length of the locus - primer length + 20 bp). The user should take into account variability in amplicon region (e.g.The amplicon size for 18S 1389f-1510r is ~260 +/- 50 bp) and make appropriate allowances. e.g. LENGTH_16S=235]':file:_files \
        '-k[Path to file with alternate HPC job submission parameters:   default file = ~/Anacapa_db/scripts/Hoffman2_HPC_header.sh modifiable template file = ~/Anacapa_db/scripts/anacapa_qsub_templates.sh]':file:_files \
        '-h[Shows program usage then quits]' \
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

