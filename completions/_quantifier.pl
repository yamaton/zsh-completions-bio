#compdef _quantifier.pl quantifier.pl

# Auto-generated with h2o


function _quantifier.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-u[list all values allowed for the species parameter that have an entry at UCSC]' \
        '-p[miRNA precursor sequences from miRBase]' \
        '-m[miRNA sequences from miRBase]' \
        '-P[specify this option of your mature miRNA file contains 5p and 3p ids only]' \
        '-r[your read sequences]' \
        '-c[config.txt file with different sample ids... or just the one sample id -- deprecated]':file:_files \
        '-s[optional star sequences from miRBase]' \
        '-t[e.g. Mouse or mmu if not searching in a specific species all species in your files will be analyzed else only the species in your dataset is considered]' \
        '-y[optional otherwise its generating a new one]' \
        '-d[if parameter given pdfs will not be generated, otherwise pdfs will be generated]' \
        '-o[if parameter is given reads were not sorted by sample in pdf file, default is sorting]' \
        '-k[also considers precursor-mature mappings that have different ids, eg let7c would be allowed to map to pre-let7a]' \
        '-n[do not do file conversion again]' \
        '-x[do not do mapping against precursor again]' \
        '-g[number of allowed mismatches when mapping reads to precursors, default 1]' \
        '-e[number of nucleotides upstream of the mature sequence to consider, default 2]' \
        '-f[number of nucleotides downstream of the mature sequence to consider, default 5]' \
        '-j[do not create an output.mrd file and pdfs if specified]' \
        '-W[read counts are weighed by their number of mappings. e.g. A read maps twice so each position gets 0.5 added to its read profile]' \
        '-U[use only unique read mappings; Caveat: Some miRNAs have multiple precursors. These will be underestimated in their expression since the multimappers are excluded]' \
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

