#compdef agat_sp_load_function_from_protein_align.pl

# Auto-generated with h2o

function _agat_sp_load_function_from_protein_align.pl {
    _arguments \
        {-a,--annotation}'[Input gtf/gff file of an annotation.]' \
        '-pgff[Input gff file of aligned proteins.]' \
        '-pfasta[Input protein fasta file where the extra information will be retrieved for each aligned protein.]' \
        {-m,--method}'[Rule to apply to lift function when a protein map properly. 1) replace => replace or add the product and Name attribute'\''s values. 2) complete => add the product and Name attribute'\''s values only if doesn'\''t exist. 3) add => add the lfp_product and lfp_name attributes with the corresponding values]' \
        {--value,--threshold,-t}'[Gene mapping percentage over which a gene must be reported. By default the value is 50.]' \
        '-w[Compute the overlap score based on the whole annotation sequence. By default we use only the coding sequence part.]' \
        '--pe[Protein existence value. We will take the best overlap score protein according to the PE expected 1. Experimental evidence at protein level 2. Experimental evidence at transcript level 3. Protein inferred from homology 4. Protein predicted 5. Protein uncertain]' \
        '--test[Test to apply (> < = >= <=). If you us one of these two character >, <, please don'\''t forget to quote you parameter liket that "<=". Else your terminal will complain.]' \
        '--sp[Species, between the set of the best protein aligned we try first to take the one that follow the species prioritization defined. There is a default one, but you can define you own (quoted and coma separated value)like that: "mus Musculus, Homo Sapiens" from the most important to the less important. In that case Mus will be taken first even if a better overlaping one exist for human. If none of them is found we take anyway the best overlapping one.]' \
        {-p,--priority}'[By default the priority is PE test before species test when both are applied. You can flip these two test by activating this option like this: -p species]' \
        '-v[Be verbose.]' \
        {-o,--output,--out}'[Output GFF file. If no output file is specified, the output will be written to STDOUT.]' \
        {-h,--help}'[Display this helpful text.]' \
        "*: :_files"

}

_agat_sp_load_function_from_protein_align.pl "$@"

