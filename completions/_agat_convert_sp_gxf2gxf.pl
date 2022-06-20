#compdef _agat_convert_sp_gxf2gxf.pl agat_convert_sp_gxf2gxf.pl

# Auto-generated with h2o


function _agat_convert_sp_gxf2gxf.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-g,--gff}'[Input GTF/GFF file. Compressed file with .gz extension is accepted.]':file:_files \
        {-c,--ct}'[When the features do not have Parent/ID relationships, the parser will try to group features using a common/shared attribute (i.e. a locus tag.). By default locus_tag and gene_id. You can replace the default common/shared attributes by providing your own(s) using this option. Use comma separated list when providing several.]' \
        {--efl,--expose}'[If you want to see, add or modified the feature relationships you will have to use this option. It will copy past in you working directory the json files used to define the relation between feature types and their level organisation. Typical level organisation: Level1 => gene; Level2 => mRNA; level3 => exon,cds,utrs If you get warning from the Omniscient parser that a feature relationship is not defined, you can provide information about it within the exposed json files. Indeed, if the json files exists in your working directory, they will be used by default.]' \
        {--ml,--merge_loci}'[Merge loci parameter, default deactivated. You turn on the parameter if you want to merge loci into one locus when they overlap. (at CDS level for mRNA, at exon level for other level2 features. Strand has to be the same). Prokaryote can have overlaping loci so it should not use it for prokaryote annotation. In eukaryote, loci rarely overlap. Overlaps could be due to error in the file, mRNA can be merged under the same parent gene if you acticate the option.]' \
        '-v[Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2 and 3 are increasing verbosity.]' \
        {--nc,--no_check}'[To deacticate all check that can be performed by the parser (e.g fixing UTR, exon, coordinates etc...)]' \
        '--tabix[Sort the output for tabix indexing.]' \
        '--throw_fasta[By default we keep the fasta sequences if present in the file. Activating this parameter will get rid of the fasta sequences. Default False.]' \
        '--debug[For debug purpose]' \
        {-o,--output}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]':file:_files \
        {--gvi,--gff_version_input}'[If you don'\''t want to use the autodection of the gff/gft version you give as input, you can force the tool to use the parser of the gff version you decide to use: 1,2,2.5 or 3. Remind: 2.5 is suposed to be gtf.]' \
        {--gvo,--gff_version_output}'[If you don'\''t want to use the autodection of the gff/gft version you give as input, you can force the tool to use the parser of the gff version you decide to use: 1,2,2.5 or 3. Remind: 2.5 is suposed to be gtf.]' \
        '--no_progressbar[To hide the progress bar.]' \
        {-h,--help}'[Display this helpful text.]' \
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

