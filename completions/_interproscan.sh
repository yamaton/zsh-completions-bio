#compdef interproscan.sh

# Auto-generated with h2o

function _interproscan.sh {
    _arguments \
        {-appl,--applications}'[Optional, comma separated list of analyses. If this option is not set, ALL analyses will be run.]' \
        {-b,--output-file-base}'[Optional, base output filename (relative or absolute path). Note that this option, the --output-dir (-d) option and the --outfile (-o) option are mutually exclusive. The appropriate file extension for the output format(s) will be appended automatically. By default the input file path/name will be used.]':file:_files \
        {-cpu,--cpu}'[Optional, number of cores for inteproscan.]' \
        {-d,--output-dir}'[Optional, output directory. Note that this option, the --outfile (-o) option and the --output-file-base (-b) option are mutually exclusive. The output filename(s) are the same as the input filename, with the appropriate file extension(s) for the output format(s) appended automatically .]':file:_files \
        {-dp,--disable-precalc}'[Optional. Disables use of the precalculated match lookup service. All match calculations will be run locally.]' \
        {-dra,--disable-residue-annot}'[Optional, excludes sites from the XML, JSON output]' \
        {-etra,--enable-tsv-residue-annot}'[Optional, includes sites in TSV output]' \
        {-exclappl,--excl-applications}'[Optional, comma separated list of analyses you want to exclude.]' \
        {-f,--formats}'[Optional, case-insensitive, comma separated list of output formats. Supported formats are TSV, XML, JSON, and GFF3. Default for protein sequences are TSV, XML and GFF3, or for nucleotide sequences GFF3 and XML.]' \
        {-goterms,--goterms}'[Optional, switch on lookup of corresponding Gene Ontology annotation (IMPLIES -iprlookup option)]' \
        {-help,--help}'[Optional, display help information]' \
        {-i,--input}'[Optional, path to fasta file that should be loaded on Master startup. Alternatively, in CONVERT mode, the InterProScan 5 XML file to convert.]':file:_files \
        {-incldepappl,--incl-dep-applications}'[Optional, comma separated list of deprecated analyses that you want included. If this option is not set, deprecated analyses will not run.]' \
        {-iprlookup,--iprlookup}'[Also include lookup of corresponding InterPro annotation in the TSV and GFF3 output formats.]' \
        {-ms,--minsize}'[Optional, minimum nucleotide size of ORF to report. Will only be considered if n is specified as a sequence type. Please be aware of the fact that if you specify a too short value it might be that the analysis takes a very long time!]' \
        {-o,--outfile}'[Optional explicit output file name (relative or absolute path). Note that this option, the --output-dir (-d) option and the --output-file-base (-b) option are mutually exclusive. If this option is given, you MUST specify a single output format using the -f option. The output file name will not be modified. Note that specifying an output file name using this option OVERWRITES ANY EXISTING FILE.]':file:_files \
        {-pa,--pathways}'[Optional, switch on lookup of corresponding Pathway annotation (IMPLIES -iprlookup option)]' \
        {-t,--seqtype}'[Optional, the type of the input sequences (dna/rna (n) or protein (p)). The default sequence type is protein.]' \
        {-T,--tempdir}'[Optional, specify temporary file directory (relative or absolute path). The default location is temp/.]':file:_files \
        {-verbose,--verbose}'[Optional, display more verbose log output]' \
        {-version,--version}'[Optional, display version number]' \
        {-vl,--verbose-level}'[Optional, display verbose log output at level specified.]' \
        {-vtsv,--output-tsv-version}'[Optional, includes a TSV version file along with any TSV output (when TSV output requested)]' \
        "*: :_files"

}

_interproscan.sh "$@"

