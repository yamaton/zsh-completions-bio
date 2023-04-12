#compdef agat_sp_manage_functional_annotation.pl

# Auto-generated with h2o

function _agat_sp_manage_functional_annotation.pl {
    _arguments \
        {-f,--reffile,-ref,--gff,--gff3}'[String - Input GTF/GFF file.]' \
        {-b,--blast}'[String - Input blast ( outfmt 6 = tabular ) file that will be used to complement the features read from the first file (specified with --ref).]' \
        {-d,--db}'[String - The fasta file that has been used as DB for the blast. Gene names and products/descriptions will be fished from this file.]' \
        {--be,--blast_evalue}'[Float - Maximum e-value to keep the annotation from the blast file. By default 1e-6.]' \
        '--pe[Integer - The PE (protein existence) in the uniprot header indicates the type of evidence that supports the existence of the protein. You can decide until which protein existence level you want to consider to lift the finctional information. Default 5.]' \
        {-i,--interpro}'[String - Input interpro file (.tsv) that will be used to complement the features read from the first file (specified with --ref).]' \
        '-id[String - This option will changed the id name. It will create from id prefix (usually 6 letters) given as input, uniq IDs like prefixE00000000001. Where E mean exon. Instead E we can have C for CDS, G for gene, T for mRNA, U for Utr. In the case of discontinuous features (i.e. a single feature that exists over multiple genomic locations) the same ID may appear on multiple lines. All lines that share an ID collectively represent a signle feature.]' \
        '-idau[Boolean - This option (id all uniq) is similar to -id option but Id of features that share an ID collectively will be change by different and uniq ID.]' \
        '-nb[Integer - Usefull only if -id is used. This option is used to define the number that will be used to begin the numbering. By default begin by 1.]' \
        {-a,--addgntag}'[Add information in ouptut gff about if gene-name tag ('\''GN='\'') is present in blast db fasta ('\''gn_present=yes'\'') or not ('\''gn_present=no'\''). Blast hits without an entry in the blast db will receive '\''gn_present=NA'\''.]' \
        {-o,--output}'[String - Output folder name with summary files. If no output file is specified, the output will be written to STDOUT.]' \
        '--pcds[Boolean - pcds stands for populate cds. It copies the Name, product, Ontology_term, Dbxref and uniprot_id attributes from mRNA to the CDS.]' \
        '-v[Boolean - Verbose, for debug purpose.]' \
        {-h,--help}'[Boolean - Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_manage_functional_annotation.pl "$@"

