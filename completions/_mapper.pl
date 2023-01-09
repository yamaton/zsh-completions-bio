#compdef _mapper.pl mapper.pl

# Auto-generated with h2o


function _mapper.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-a[input file is seq.txt format]' \
        '-b[input file is qseq.txt format]' \
        '-c[input file is fasta format]' \
        '-e[input file is fastq format]' \
        '-d[input file is a config file (see miRDeep2 documentation). options -a, -b, -c or -e must be given with option -d.]' \
        '-g[three-letter prefix for reads (by default '\''seq'\'')]' \
        '-h[parse to fasta format]' \
        '-i[convert rna to dna alphabet (to map against genome)]' \
        '-j[remove all entries that have a sequence that contains letters other than a,c,g,t,u,n,A,C,G,T,U,N]' \
        '-k[clip 3'\'' adapter sequence]' \
        '-l[discard reads shorter than int nts, default = 18]' \
        '-m[collapse reads]' \
        '-p[map to genome (must be indexed by bowtie-build). The '\''genome'\'' string must be the prefix of the bowtie index. For instance, if the first indexed file is called '\''h_sapiens_37_asm.1.ebwt'\'' then the prefix is '\''h_sapiens_37_asm'\''.]' \
        '-q[map with one mismatch in the seed (mapping takes longer)]' \
        '-r[a read is allowed to map up to this number of positions in the genome default is 5]' \
        '-s[print processed reads to this file]':file:_files \
        '-t[print read mappings to this file]':file:_files \
        '-u[do not remove directory with temporary files]' \
        '-v[outputs progress report]' \
        '-n[overwrite existing files]' \
        '-o[number of threads to use for bowtie]' \
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

