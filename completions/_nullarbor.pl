#compdef nullarbor.pl

# Auto-generated with h2o

function _nullarbor.pl {
    _arguments \
        '--name[Job name]' \
        '--ref[Reference file in FASTA or GBK format]':file:_files \
        '--input[Input TSV file with format: | Isolate_ID | R1.fq.gz | R2.fq.gz |]':file:_files \
        '--outdir[Output folder]':file:_files \
        '--mode[Run mode: \[all\] preview]' \
        '--cpus[Maximum number of CPUs to use in total (12)]' \
        '--force[Overwrite --outdir (useful for adding samples to existing analysis)]' \
        '--quiet[No screen output]' \
        '--verbose[More screen output]' \
        '--version[Print version and exit]' \
        '--check[Check dependencies and exit]' \
        '--run[Immediately launch Makefile]' \
        '--conf[Config file (~/.local/share/condax/envs/nullarbor/bin/../conf/nullarbor.conf)]':file:_files \
        '--gcode[Genetic code for prokka (11)]' \
        '--trim[Trim reads of adaptors (0)]' \
        '--mlst[Force this MLST scheme (AUTO)]' \
        '--minctg[Minimum contig length for Prokka and Roary]' \
        '--prefill[Use precomputed data as per --conf file. Use --no-prefill to override.]' \
        '--link-cmd[Command to symlink/copy FASTQ files into --outdir ('\''ln -s -f'\'')]' \
        '--snippy_opt[Options to pass to snippy eg. '\''--mincov 10 --ram 32'\'' ()]' \
        '--roary_opt[Options to pass to roary eg. '\''-iv 1.75 -s -cd 97'\'' ()]' \
        '--mask[Mask core SNPS in these regions or '\''auto'\'' ()]' \
        '--auto[Be lazy and guess --name,--ref,--input,--outdir,--mask]' \
        '--assembler[Assembler to use: megahit shovill skesa skesa_fast spades (skesa)]' \
        '--assembler-opt[Extra assembler options to pass ()]' \
        '--treebuilder[Tree-builder to use: fasttree iqtree iqtree_fast iqtree_slow (iqtree_fast)]' \
        '--treebuilder-opt[Extra tree-builder options to pass ()]' \
        '--taxoner[Species ID tool to use: centrifuge kraken kraken2 (kraken)]' \
        '--taxoner-opt[Extra species ID builder options to pass ()]' \
        '--annotator[Genome annotator to use: prokka_fast (prokka_fast)]' \
        '--annotator-opt[Extra annotator options to pass ()]' \
        "*: :_files"

}

_nullarbor.pl "$@"

