#compdef _polca.sh polca.sh

# Auto-generated with h2o


function _polca.sh {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        '-a[Assembly contigs or scaffolds]' \
        '-r[Illumina reads fastq]' \
        '-m[Memory per thread to use in samtools sort]' \
        '-t[Number of threads]' \
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

