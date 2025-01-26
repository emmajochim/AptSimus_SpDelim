#!/bin/bash

#note: to enter phyluce environment: module load phyluce, then source activate $
#to exit: source deactivate
# doesn't like # within command blocks

#SBATCH --job-name=phyluce
#SBATCH --nodes=1
#SBATCH --ntasks=4                               
#SBATCH --mem=64G                               
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --time=2-20:00                          
#SBATCH --partition=high2                           
#SBATCH --reservation=                           
#SBATCH --output=phyluce-%N-%j.out               
#SBATCH --error=phyluce-%N-%j.err                
#SBATCH --mail-type=ALL                          
#SBATCH --mail-user=ejochim@ucdavis.edu  


module load conda/phyluce/1.7.3
conda activate phyluce-1.7.3

#phyluce_workflow \
#        --config /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/all_UCE/rodrigo_method/config_files/correction.yaml \
#        --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/all_UCE/rodrigo_method/corrected \
#        --workflow correction \
#        --cores 10

#phyluce_assembly_match_contigs_to_probes \
#--contigs /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/all_UCE/rodrigo_method/corrected/consensus \
#--probes /group/jbondgrp2/emmaJochim/UCE_stuff/blended_probe_set/UCEProbes_blended_Spider2Kv1+Arachnid11Kv1-WPM2020.fasta \
#--output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/probe_match_UCE_contigs_min80_simus_no_outgroups_Sept2024 \
#--min-coverage 80 \
#--min-identity 80 \
#--log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files

#phyluce_assembly_get_match_counts \
#    --locus-db /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/probe_match_UCE_contigs_min80_simus_no_outgroups_Sept2024/probe.matches.sqlite \
#    --taxon-list-config /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus.conf \
#    --taxon-group 'Ap_simus' \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_match_count.conf \
#    --incomplete-matrix \
#    --log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files

#phyluce_assembly_get_fastas_from_match_counts \
#--contigs /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/all_UCE/rodrigo_method/corrected/consensus \
#--locus-db /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/probe_match_UCE_contigs_min80_simus_no_outgroups_Sept2024/probe.matches.sqlite \
#--match-count-output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_match_count.conf \
#--incomplete-matrix /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_match_count.incomplete \
#--output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP.fasta \
#--log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files

#phyluce_align_seqcap_align \
#    --input /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP.fasta \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus \
#    --taxa 37 \
#    --aligner mafft \
#    --ambiguous \
#    --no-trim \
#    --cores 2 \
#    --incomplete-matrix \
#    --log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files

#phyluce_align_remove_locus_name_from_files \
#    --alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean \
#    --cores 2 \
#    --log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files

#phyluce_align_get_only_loci_with_min_taxa \
#    --alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean \
#    --taxa 37 \
#    --percent 0.75 \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-75p-taxa \
#    --log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files \
#    --cores 2

#phyluce_align_get_only_loci_with_min_taxa \
#    --alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean \
#    --taxa 37 \
#    --percent 0.85 \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-85p-taxa \
#    --log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files \
#    --cores 2

#phyluce_align_get_only_loci_with_min_taxa \
#    --alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean \
#    --taxa 37 \
#    --percent 0.95 \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-95p-taxa \
#    --log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files \
#    --cores 2

#phyluce_align_get_trimal_trimmed_alignments_from_untrimmed \
#    --alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-75p-taxa/ \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-75p-taxa-trimaldefault/ \
#    --input-format nexus \
#    --output-format nexus \
#    --log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files \
#    --cores 1


#phyluce_align_get_trimal_trimmed_alignments_from_untrimmed \
#    --alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-85p-taxa/ \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-85p-taxa-trimaldefault/ \
#    --input-format nexus \
#    --output-format nexus \
#    --log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files \
#    --cores 1

#phyluce_align_get_trimal_trimmed_alignments_from_untrimmed \
#    --alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-95p-taxa/ \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-95p-taxa-trimaldefault/ \
#    --input-format nexus \
#    --output-format nexus \
#    --log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files \
#    --cores 1

#phyluce_align_concatenate_alignments \
#       --alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-75p-taxa-trimaldefault/ \
#       --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-75p-taxa-trimaldefault-raxml/ \
#       --phylip

#phyluce_align_concatenate_alignments \
#       --alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-85p-taxa-trimaldefault/ \
#       --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-85p-taxa-trimaldefault-raxml/ \
#       --phylip

#phyluce_align_concatenate_alignments \
#       --alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-95p-taxa-trimaldefault/ \
#       --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-95p-taxa-trimaldefault-raxml/ \
#       --phylip



##########prepare for ASTRAL

#phyluce_align_convert_one_align_to_another \
#	--alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-75p-taxa-trimaldefault \
#	--output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-75p-taxa-trimaldefault_phylip_relaxed \
#	--input-format nexus \
#	--output-format phylip-relaxed \
#	--cores 2
