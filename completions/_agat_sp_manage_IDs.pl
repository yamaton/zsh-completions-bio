#compdef _agat_sp_manage_IDs.pl agat_sp_manage_IDs.pl

# Auto-generated with h2o


function _agat_sp_manage_IDs.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--gff,-f}'[Input GTF/GFF file.]' \
        '--gap[Integer - Increment the next gene (level1 feature) suffix with this value. Defauft 0.]' \
        '--ensembl[Boolean - For an ID Ensembl like (e.g PREFIXG00000000022). The ID is built as follow: $opt_prefix.$letterCode.0*.Number where the number of 0 is adapted in order to have 11 digits.]' \
        '--prefix[String - Add a specific prefix to the ID. By defaut if will be the feature type (3rd column).]' \
        '--type_dependent[Boolean - Activate type_dependent numbering. The number is depedendent of the feature type. i.e instead of: NbV1Ch01 AUGUSTUS gene 97932 99714 0.06 - . ID=gene1 NbV1Ch01 AUGUSTUS mRNA 97932 99714 0.06 - . ID=mRNA2 NbV1Ch01 AUGUSTUS exon 97932 98571 . - . ID=exon3 NbV1Ch01 AUGUSTUS exon 98679 98844 . - . ID=exon4 You will get: NbV1Ch01 AUGUSTUS gene 97932 99714 0.06 - . ID=gene1 NbV1Ch01 AUGUSTUS mRNA 97932 99714 0.06 - . ID=mRNA1 NbV1Ch01 AUGUSTUS exon 97932 98571 . - . ID=exon1 NbV1Ch01 AUGUSTUS exon 98679 98844 . - . ID=exon2]' \
        '--collective[Boolean - In the case of discontinuous features (i.e. a single feature that exists over multiple genomic locations like CDS, UTR) we set a uniq ID by default. If you wish to set the a collective ID for those feature, please activate this option.]' \
        '--tair[Boolean - Tair like Output:]' \
        '--nb[Integer - Start numbering to this value. Default 1.]' \
        {-p,-t,-l}'[primary tag option, case insensitive, list. Allow to specied the feature types that will be handled. You can specified a specific feature by given its primary tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default all feature are taken into account. fill the option by the value "all" will have the same behaviour.]' \
        {-o,--output,--out,--outfile}'[String - Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Boolean - Display this helpful text.]' \
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

