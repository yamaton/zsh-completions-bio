#compdef _emapper.py emapper.py

# Auto-generated with h2o


function _emapper.py {
    local line state

    function _commands {
        local -a commands
        commands=(
        )
        _describe 'command' commands
    }
 

    _arguments -C \
        {-h,--help}'[show this help message and exit]' \
        {-v,--version}'[show version and exit. (default: False)]' \
        '--list_taxa[List taxa available for --tax_scope/--tax_scope_mode, and exit (default: False)]' \
        '--cpu[Number of CPUs to be used. --cpu 0 to run with all available CPUs. (default: 1)]' \
        '--mp_start_method[Sets the python multiprocessing start method. Check https://docs.python.org/3/library/multiprocessing.html. Only use if the default method is not working properly in your OS. (default: spawn)]' \
        '--resume[Resumes a previous emapper run, skipping results in existing output files. (default: False)]' \
        '--override[Overwrites output files if they exist. By default, execution is aborted if conflicting files are detected. (default: False)]' \
        '-i[Input FASTA file containing query sequences (proteins by default; see --itype and --translate). Required unless -m no_search. (default: None)]':file:_files \
        '--itype[Type of data in the input (-i) file. (default: proteins)]' \
        '--translate[When --itype CDS, translate CDS to proteins before search. When --itype genome/metagenome and --genepred search, translate predicted CDS from blastx hits to proteins. (default: False)]' \
        '--annotate_hits_table[Annotate TSV formatted table with 4 fields: query, hit, evalue, score. Usually, a .seed_orthologs file from a previous emapper.py run. Requires -m no_search. (default: None)]':file:_files \
        {-c,--cache}'[File containing annotations and md5 hashes of queries, to be used as cache. Required if -m cache (default: None)]':file:_files \
        '--data_dir[Path to eggnog-mapper databases. By default, "data/" or the path specified in the environment variable EGGNOG_DATA_DIR. (default: None)]':file:_files \
        '--genepred[This is applied when --itype genome or --itype metagenome. search: gene prediction is inferred from Diamond/MMseqs2 blastx hits. prodigal: gene prediction is performed using Prodigal. (default: search)]' \
        '--trans_table[This option will be used for Prodigal, Diamond or MMseqs2, depending on the mode. For Diamond searches, this option corresponds to the --query-gencode option. For MMseqs2 searches, this option corresponds to the --translation-table option. For Prodigal, this option corresponds to the -g/--trans_table option. It is also used when --translate, check https://biopython.org/docs/1.75/api/Bio.Seq.html#Bio.Seq.Seq.translate. Default is the corresponding programs defaults. (default: None)]' \
        '--training_genome[A genome to run Prodigal in training mode. If this parameter is used, Prodigal will run in two steps: firstly in training mode, and secondly using the training to analize the emapper input data. See Prodigal documentation about Traning mode for more info. Only used if --genepred prodigal. (default: None)]':file:_files \
        '--training_file[A training file from Prodigal training mode. If this parameter is used, Prodigal will run using this training file to analyze the emapper input data. Only used if --genepred prodigal. (default: None)]':file:_files \
        '--allow_overlaps[When using '\''blastx'\''-based genepred (--genepred search --itype genome/metagenome) this option controls whether overlapping hits are reported or not, or if only those overlapping hits in a different strand or frame are reported. Also, the degree of accepted overlap can be controlled with --overlap_tol. (default: none)]' \
        '--overlap_tol[This value (0-1) is the proportion such that if (overlap size / hit length) > overlap_tol, hits are considered to overlap. e.g: if overlap_tol is 0.0, any overlap is considered as such. e.g: if overlap_tol is 1.0, one of the hits must overlap entirely to consider that hits do overlap. (default: 0.0)]' \
        '-m[diamond: search seed orthologs using diamond (-i is required). mmseqs: search seed orthologs using MMseqs2 (-i is required). hmmer: search seed orthologs using HMMER. (-i is required). no_search: skip seed orthologs search (--annotate_hits_table is required, unless --no_annot). cache: skip seed orthologs search and annotate based on cached results (-i and -c are required).novel_fams: search against the novel families database (-i is required). (default: diamond)]' \
        '--pident[Report only alignments above or equal to the given percentage of identity (0-100).No effect if -m hmmer. (default: None)]' \
        '--query_cover[Report only alignments above or equal the given percentage of query cover (0-100).No effect if -m hmmer. (default: None)]' \
        '--subject_cover[Report only alignments above or equal the given percentage of subject cover (0-100).No effect if -m hmmer. (default: None)]' \
        '--evalue[Report only alignments below or equal the e-value threshold. (default: 0.001)]' \
        '--score[Report only alignments above or equal the score threshold. (default: None)]' \
        '--dmnd_algo[Diamond'\''s --algo option, which can be tuned to search small query sets. By default, it is adjusted automatically. However, the ctg option should be activated manually. If you plan to search a small input set of sequences, use --dmnd_algo ctg to make it faster. (default: auto)]' \
        '--dmnd_db[Path to DIAMOND-compatible database (default: None)]':file:_files \
        '--sensmode[Diamond'\''s sensitivity mode. Note that emapper'\''s default is sensitive, which is different from diamond'\''s default, which can be activated with --sensmode default. (default: sensitive)]' \
        '--dmnd_iterate[--dmnd_iterate yes --> activates the --iterate option of diamond for iterative searches, from faster, less sensitive modes, up to the sensitivity specified with --sensmode. Available since diamond 2.0.11. --dmnd_iterate no --> disables the --iterate mode. (default: yes)]' \
        '--matrix[Scoring matrix (default: None)]' \
        '--dmnd_frameshift[Diamond --frameshift/-F option. Not used by default. Recommended by diamond: 15. (default: None)]' \
        '--gapopen[Gap open penalty (default: None)]' \
        '--gapextend[Gap extend penalty (default: None)]' \
        '--block_size[Diamond -b/--block-size option. Default is the diamond'\''s default. (default: None)]' \
        '--index_chunks[Diamond -c/--index-chunks option. Default is the diamond'\''s default. (default: None)]' \
        '--outfmt_short[Diamond output will include only qseqid sseqid evalue and score. This could help obtain better performance, if also no --pident, --query_cover or --subject_cover thresholds are used. This option is ignored when the diamond search is run in blastx mode for gene prediction (see --genepred). (default: False)]' \
        '--dmnd_ignore_warnings[Diamond --ignore-warnings option. It avoids Diamond stopping due to warnings (e.g. when a protein contains only ATGC symbols. (default: False)]' \
        '--mmseqs_db[Path to MMseqs2-compatible database (default: None)]':file:_files \
        '--start_sens[Starting sensitivity. (default: 3)]' \
        '--sens_steps[Number of sensitivity steps. (default: 3)]' \
        '--final_sens[Final sensititivy step. (default: 7)]' \
        '--mmseqs_sub_mat[Matrix to be used for --sub-mat MMseqs2 search option. Default=default used by MMseqs2 (default: None)]' \
        {-d,--database}'[specify the target database for sequence searches. Choose among: euk,bact,arch, or a database loaded in a server, db.hmm:host:port (see hmm_server.py) (default: None)]' \
        '--servers_list[A FILE with a list of remote hmmpgmd servers. Each row in the file represents a server, in the format '\''host:port'\''. If --servers_list is specified, host and port from -d option will be ignored. (default: None)]':file:_files \
        '--qtype[Type of input data (-i). (default: seq)]' \
        '--dbtype[Type of data in DB (-db). (default: hmmdb)]' \
        '--usemem[Use this option to allocate the whole database (-d) in memory using hmmpgmd. If --dbtype hmm, the database must be a hmmpress-ed database. If --dbtype seqdb, the database must be a HMMER-format database created with esl-reformat. Database will be unloaded after execution. Note that this only works for HMMER based searches. To load the eggnog-mapper annotation DB into memory use --dbmem. (default: False)]' \
        {-p,--port}'[Port used to setup HMM server, when --usemem. Also used for --pfam_realign modes. (default: 51700)]' \
        '--end_port[Last port to be used to setup HMM server, when --usemem. Also used for --pfam_realign modes. (default: 53200)]' \
        '--num_servers[When using --usemem, specify the number of servers to fire up.Note that cpus specified with --cpu will be distributed among servers and workers. Also used for --pfam_realign modes. (default: 1)]' \
        '--num_workers[When using --usemem, specify the number of workers per server (--num_servers) to fire up. By default, cpus specified with --cpu will be distributed among servers and workers. Also used for --pfam_realign modes. (default: 1)]' \
        '--hmm_maxhits[Max number of hits to report (0 to report all). (default: 1)]' \
        '--report_no_hits[Whether queries without hits should be included in the output table. (default: False)]' \
        '--hmm_maxseqlen[Ignore query sequences larger than `maxseqlen`. (default: 5000)]' \
        '--Z[Fixed database size used in phmmer/hmmscan (allows comparing e-values among databases). (default: 40000000)]' \
        '--cut_ga[Adds the --cut_ga to hmmer commands (useful for Pfam mappings, for example). See hmmer documentation. (default: False)]' \
        '--clean_overlaps[Removes those hits which overlap, keeping only the one with best evalue. Use the "all" and "clans" options when performing a hmmscan type search (i.e. domains are in the database). Use the "hmmsearch_all" and "hmmsearch_clans" options when using a hmmsearch type search (i.e. domains are the queries from -i file). The "clans" and "hmmsearch_clans" and options will only have effect for hits to/from Pfam. (default: None)]' \
        '--no_annot[Skip functional annotation, reporting only hits. (default: False)]' \
        '--dbmem[Use this option to allocate the whole eggnog.db DB in memory. Database will be unloaded after execution. (default: False)]' \
        '--seed_ortholog_evalue[Min E-value expected when searching for seed eggNOG ortholog. Queries not having a significant seed orthologs will not be annotated. (default: 0.001)]' \
        '--seed_ortholog_score[Min bit score expected when searching for seed eggNOG ortholog. Queries not having a significant seed orthologs will not be annotated. (default: None)]' \
        '--tax_scope[Fix the taxonomic scope used for annotation, so only speciation events from a particular clade are used for functional transfer. More specifically, the --tax_scope list is intersected with the seed orthologs clades, and the resulting clades are used for annotation based on --tax_scope_mode. Note that those seed orthologs without clades intersecting with --tax_scope will be filtered out, and won'\''t annotated. Possible arguments for --tax_scope are: 1) A path to a file defined by the user, which contains a list of tax IDs and/or tax names. 2) The name of a pre-configured tax scope, whose source is a file stored within the '\''eggnogmapper/annotation/tax_scopes/'\'' directory By default, available ones are: '\''auto'\'' ('\''all'\''), '\''auto_broad'\'' ('\''all_broad'\''), '\''all_narrow'\'', '\''archaea'\'', '\''bacteria'\'', '\''bacteria_broad'\'', '\''eukaryota'\'', '\''eukaryota_broad'\'' and '\''prokaryota_broad'\''.3) A comma-separated list of taxonomic names and/or taxonomic IDs, sorted by preference. An example of list of tax IDs would be 2759,2157,2,1 for Eukaryota, Archaea, Bacteria and root, in that order of preference. 4) '\''none'\'': do not filter out annotations based on taxonomic scope. (default: auto)]' \
        '--tax_scope_mode[For a seed ortholog which passed the filter imposed by --tax_scope, --tax_scope_mode controls which specific clade, to which the seed ortholog belongs, will be used for annotation. Options: 1) broadest: use the broadest clade. 2) inner_broadest: use the broadest clade from the intersection with --tax_scope. 3) inner_narrowest: use the narrowest clade from the intersection with --tax_scope. 4) narrowest: use the narrowest clade. 5) A taxonomic scope as in --tax_scope: use this second list to intersect with seed ortholog clades and use the narrowest (as in inner_narrowest) from the intersection to annotate. (default: inner_narrowest)]' \
        '--target_orthologs[defines what type of orthologs (in relation to the seed ortholog) should be used for functional transfer (default: all)]' \
        '--target_taxa[Only orthologs from the specified comma-separated list of taxa and all its descendants will be used for annotation transference. By default, all taxa are used. (default: None)]' \
        '--excluded_taxa[Orthologs from the specified comma-separated list of taxa and all its descendants will not be used for annotation transference. By default, no taxa is excluded. (default: None)]' \
        '--report_orthologs[Output the list of orthologs found for each query to a .orthologs file (default: False)]' \
        '--go_evidence[Defines what type of GO terms should be used for annotation. experimental = Use only terms inferred from experimental evidence. non-electronic = Use only non-electronically curated terms (default: non-electronic)]' \
        '--pfam_realign[Realign the queries to the PFAM domains. none = no realignment is performed. PFAM annotation will be that transferred as specify in the --pfam_transfer option. realign = queries will be realigned to the PFAM domains found according to the --pfam_transfer option. denovo = queries will be realigned to the whole PFAM database, ignoring the --pfam_transfer option. Check hmmer options (--num_servers, --num_workers, --port, --end_port) to change how the hmmpgmd server is run. (default: none)]' \
        '--md5[Adds the md5 hash of each query as an additional field in annotations output files. (default: False)]' \
        {--output,-o}'[base name for output files (default: None)]':file:_files \
        '--output_dir[Where output files should be written]':file:_files \
        '--scratch_dir[Write output files in a temporary scratch dir, move them to the final output dir when finished. Speed up large computations using network file systems. (default: None)]':file:_files \
        '--temp_dir[Where temporary files are created. Better if this is a local disk.]':file:_files \
        '--no_file_comments[No header lines nor stats are included in the output files (default: False)]' \
        '--decorate_gff[Add search hits and/or annotation results to GFF file from gene prediction of a user specified one. no = no GFF decoration at all. GFF file from blastx-based gene prediction will be created anyway. yes = add search hits and/or annotations to GFF file from Prodigal or blastx-based gene prediction. FILE = decorate the specified pre-existing GFF FILE. e.g. --decorage_gff myfile.gff You change the field interpreted as ID of the feature with --decorate_gff_ID_field. (default: no)]' \
        '--decorate_gff_ID_field[Change the field used in GFF files as ID of the feature. (default: ID)]' \
        '--excel[Output annotations also in .xlsx format. (default: False)]' \
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

