#compdef loadPromoters.pl

# Auto-generated with h2o

function _loadPromoters.pl {
    _arguments \
        '-name[used to refer to it later with findMotifs.pl]' \
        '-org[Name of organism, ok to set to '\''null'\'' if not in HOMER]' \
        '-id[specify one: gene, refseq, unigene, ensembl or custom]' \
        '-force[Overwrite existing promoter set definition]' \
        '-keepAccVer[By default, promoter IDs with an accession version number will be trimmed off - i.e. NM_012345.2 -> NM_012345 - use this flag keep the .#]' \
        '-version[Assign version, versions starting with '\''v'\'' are managed by the configureHomer.pl script and my be overwritten, default: custom]' \
        '-as[Redundant/CpG analysis start, default: -300]' \
        '-ae[Redundant/CpG analysis end, default: 50]' \
        '-genome[homer genome version -OR- genome FASTA file]' \
        '-tss[peak file centered on TSS positions]':file:_files \
        '-size[default: 4000, i.e. +/- 2000 from the TSS]' \
        '-dist[Distance between promoters to consider redundant, default: 500]' \
        '-fasta[FASTA file of promoter regions Each promoter should be the same length with only the ID after each ">" FASTA Files will be considered "masked" so that it will be the default option]':file:_files \
        '-offset[offset of the first base, i.e. -1000 for 1kb upstream]' \
        "*: :_files"

}

_loadPromoters.pl "$@"

