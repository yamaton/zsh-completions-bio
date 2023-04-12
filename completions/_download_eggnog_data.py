#compdef download_eggnog_data.py

# Auto-generated with h2o

function _download_eggnog_data.py {
    _arguments \
        {-h,--help}'[show this help message and exit]' \
        '-D[Do not install the diamond database (default: False)]' \
        '-F[Install the novel families diamond database, required for "emapper.py -m novel_fams" (default: False)]' \
        '-P[Install the Pfam database, required for de novo annotation or realignment (default: False)]' \
        '-M[Install the MMseqs2 database, required for "emapper.py -m mmseqs" (default: False)]' \
        '-H[Install the HMMER database specified with "-d TAXID". Required for "emapper.py -m hmmer -d TAXID" (default: False)]' \
        '-d[Tax ID of eggNOG HMM database to download. e.g. "-H -d 2" for Bacteria. Required if "-H". Available tax IDs can be found at http://eggnog5.embl.de/#/app/downloads. (default: None)]' \
        '-y[assume "yes" to all questions (default: False)]' \
        '-f[forces download even if the files exist (default: False)]' \
        '-s[simulate and print commands. Nothing is downloaded (default: False)]' \
        '-q[quiet_mode (default: False)]' \
        '--data_dir[Directory to use for DATA_PATH. (default: None)]' \
        "*: :_files"

}

_download_eggnog_data.py "$@"

