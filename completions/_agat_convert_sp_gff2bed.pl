#compdef agat_convert_sp_gff2bed.pl

# Auto-generated with h2o

function _agat_convert_sp_gff2bed.pl {
    _arguments \
        '--gff[Input GFF3 file that will be read]' \
        '--nc[STRING - behaviour for non-coding features (e.g. recored wihtout CDS). \[keep,filter,transcript\] keep - Default, they are kept but no CDS position is reported in the 7th and 8th columns (a period is reported instead). filter - We remove them. transcript - We keep them but values in 7th and 8th columns will contains transcript'\''s start and stop.]' \
        '--sub[Define the subfeature (level3, e.g exon,cds,utr,etc...) to report as blocks in the bed output. Defaut: exon.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_convert_sp_gff2bed.pl "$@"

