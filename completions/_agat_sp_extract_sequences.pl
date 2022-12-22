#compdef _agat_sp_extract_sequences.pl agat_sp_extract_sequences.pl

# Auto-generated with h2o


function _agat_sp_extract_sequences.pl {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {--alternative_start_codon,--asc}'[Bolean - When activated it can affect the translation of the start codon. Indeed alternative start codons exist, and are translated by the cells'\''machinery by a Methionine (M). By default AGAT translates the first codon as other codons by the corresponding AA. If you wish to translate the first codon by a M when it is a valid alternative start codon, activate this parameter. If the sequence you try to translate is a CDS (or starting by a CDS), the phase is checked and the alternative start codon is accepted only if the phase is 0.]' \
        '--cdna[Boolean - This extract the cdna sequence (i.e reverse complement of the mRNA: transcribed sequence (devoid of introns, but containing untranslated exons, then reverse complemented). It corresponds to extract the exons sequences, merge them, and reverse complement the sequence (--type exon --merge --revcomp).]' \
        {--clean_final_stop,--cfs}'[Boolean - The Clean Final Stop option allows removing the translation of the final stop codons that is represented by the <*> character. This character can be disturbing for many programs (e.g interproscan)]' \
        {--clean_internal_stop,--cis}'[Boolean - The Clean Internal Stop option allows replacing the translation of the stop codons present among the sequence that is represented by the <*> character by <X>. Indeed the <*> character can be disturbing for many programs (e.g interproscan)]' \
        {--codon,--table,--ct}'[Integer - Allow to choose the codon table for the translation. \[default 1\]]' \
        {--do,-3,--three,-down,-downstream}'[Integer - It will take that number of nucleotide in more at the 3'\'' extremity. /!\ You must activate the option "--full" if you with to extract only the most downstream part of certain feature (exon,cds,utr) otherwise you will extract each downstream parts of the subfeatures (e.g many cds parts may be needed to shape a cds in its whole).]' \
        '--eo[Boolean - Called '\''extremity only'\'', this option will extract only the adjacent parts of a feature. This option has to be activated with -u and/or -p option. /!\ using -u and -p together builds a chimeric sequence which will be the concatenation of the left and right extremities of a feature.]' \
        {-f,--fasta}'[String - Input fasta file.]' \
        '--full[Boolean - This option allows dealing with feature that may span over several locations like cds or exon, in order to extract the full sequence from the start extremity of the first chunck to the end extremity of the last chunk. The use of that option with '\''--type exon'\'' will extract the pre-mRNA sequence (i.e with introns). Use of that option on cds will give the pre-mRNA without the untraslated regions (UTRs). (To extract an mRNA as it is defined biologicaly you need to use the `-t exon` option with the --merge option)]' \
        {-g,--gff,-ref}'[String - Input GTF/GFF file.]' \
        {-h,--help}'[Boolean - Display this helpful text.]' \
        '--keep_attributes[Boolean - The value of the attribute tags will be extracted from the feature type specified by the option --type and stored in the fasta header.]' \
        '--keep_parent_attributes[Boolean - The value of the attribute tags will be extracted from the feature type specified by the option --type along with those from parent features and stored in the fasta header.]' \
        '--merge[Boolean - By default, only features that span several locations (e.g. cds and utr can span over several exons) are merged together. In order to merge other type of features (e.g. exon) you must activate this parameter.]' \
        '--mrna[Boolean - This extract the mrna sequence (i.e transcribed sequence (devoid of introns, but containing untranslated exons)). It corresponds to extract the exon sequences and merge them (--type exon --merge).]' \
        '--ofs[String - Output Fields Separator for the description field of the header of the created fasta sequences. By default it'\''s a space < > but can be modified by any String or character using this option.]' \
        {-o,--output}'[String - Output fasta file. If no output file is specified, the output will be written to STDOUT.]' \
        '--plus_strand_only[Boolean - By default the extrated feature sequences from a minus strand is reverse complemented. Activating this option you will always get sequence from plus strand ( not reverse complemented). You can get the opposite (minus strand only) by using --plus_strand_only --revcomp]' \
        {-p,--protein,--aa}'[Boolean - Will translate the extracted sequence in Amino acid. By default the codon table used is the 1 (Standard). See --table parameter for more options.]' \
        {--remove_orf_offset,--roo}'[Boolean - CDS can start with a phase different from 0 when a gene model is fragmented. When asking for protein translation this (start) offset is trimmed out automatically. But when you extract CDS dna sequences, this (start) offset is not removed by default. To remove it activate this option. If --up or --do option are used too, the (start) offset is trimmed first, then is added the piece of sequence asked for.]' \
        '--revcomp[Boolean - To reverse complement the extracted sequence \[default - False\]. By default the extrated feature sequences from a minus strand is reverse complemented. Consequently, for minus strand features that option will extract the sequences from plus strand from left to right.]' \
        '--split[Boolean - By default, all features that span several locations (e.g. cds and utr can span over several exons) are merge together to shape the biological feature (e.g. several cds chuncks are merged to create the CDS in its whole). If you wish to extract all the chuncks independently activate this option.]' \
        {-t,--type}'[String - Define the feature you want to extract the sequence from. Default '\''cds'\''. Most common choice are: gene,mrna,exon,cds,trna,three_prime_utr,five_prime_utr. When you choose exon (or cds,utr,etc.), all the exons of a same parent feature are attached together before to extract the sequence. If you wish to extract each exon of an mRNA independently, see option --split. /!\ `-t mRNA` will extract the features labeled as "mRNA" and corresponds to the cdna* because it contains the introns if any. It does not actually extract the mRNAs as it is defined biologicaly. To extract the mRNA as defined biologicaly you must use `-t exon`. *Not a real cdna because it is not reversed]' \
        {--up,-5,--five,-upstream}'[Integer - It will take that number of nucleotide in more at the 5'\'' extremity. /!\ You must activate the option "--full" if you wish to extract only the most upstream part of certain features (exon,cds,utr) otherwise you will extract each upstream parts of the subfeatures (e.g many cds parts may be needed to shape a cds in its whole).]' \
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

