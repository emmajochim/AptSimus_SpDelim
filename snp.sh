#!/bin/bash

#note: to enter phyluce environment: module load phyluce, then source activate $
#to exit: source deactivate
# doesn't like # within command blocks

#SBATCH --job-name=snp
#SBATCH --nodes=1
#SBATCH --ntasks=4                               
#SBATCH --mem=64G                               
#SBATCH -N 1
#SBATCH -n 4
#SBATCH --time=2-20:00                          
#SBATCH --partition=high2                           
#SBATCH --reservation=                           
#SBATCH --output=snp-%N-%j.out               
#SBATCH --error=snp-%N-%j.err                
#SBATCH --mail-type=ALL                          
#SBATCH --mail-user=ejochim@ucdavis.edu 


module load conda/phyluce/1.7.3
conda activate phyluce-1.7.3


#phyluce_assembly_explode_get_fastas_file \
#	--input /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/simus_UCE_no_AP.fasta \
#	--output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_UCE_no_AP_exploded-fastas \
#	--by-taxon

#phyluce_workflow \
#    --config /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/mapping.yaml \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/mapped \
#    --workflow mapping \
#    --cores 2

#phyluce_workflow \
#    --config /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/phasing.yaml \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/phased \
#    --workflow phasing \
#    --cores 2

#phyluce_assembly_match_contigs_to_probes \
#    --contigs /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/phased/fastas \
#    --probes /group/jbondgrp2/emmaJochim/UCE_stuff/blended_probe_set/UCEProbes_blended_Spider2Kv1+Arachnid11Kv1-WPM2020.fasta \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/all_phased_probe_match \
#    --min-coverage 80 \
#    --min-identity 80 \
#    --log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files

#phyluce_assembly_get_match_counts \
#    --locus-db /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/all_phased_probe_match/probe.matches.sqlite \
#    --taxon-list-config /group/jbondgrp2/emmaJochim/UCE_stuff/config_files/simus_manuscript/simus_phased.conf \
#    --taxon-group 'Ap_simus' \
#    --output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased_match_count.conf \
#    --incomplete-matrix \
#    --log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files

#phyluce_assembly_get_fastas_from_match_counts \
#	--contigs /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/phased/fastas \
#	--locus-db /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/all_phased_probe_match/probe.matches.sqlite \
#	--match-count-output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased_match_count.conf \
#	--incomplete-matrix /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased.incomplete \
#	--output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased.fasta \
#	--log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files

#phyluce_align_seqcap_align \
#	--input /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased.fasta \
#	--output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous \
#	--taxa 64 \
#	--aligner mafft \
#	--ambiguous \
#	--cores 2 \
#	--incomplete-matrix \
#	--log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files

#phyluce_align_remove_locus_name_from_files \
#	--alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous \
#	--output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean \
#	--log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files \
#	--cores 2

#phyluce_align_get_only_loci_with_min_taxa \
#	--alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean \
#	--taxa 64 \
#	--percent 0.75 \
#	--output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa \
#	--log-path /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/log_files \
#	--cores 2

#phyluce_align_convert_one_align_to_another \
#	--alignments /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa \
#	--output /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/with_jim_help/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta \
#	--input-format nexus \
#	--output-format fasta



###########reformatting for SNP with Andermann

#for uce in simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta/*;
#do
#sed -i "s/-/N/g" $uce;
#done


#for uce in simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta/*;
#do
#sed -i "s/a/A/g" $uce;
#done


#for uce in simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta/*;
#do
#sed -i "s/c/C/g" $uce;
#done


#for uce in simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta/*;
#do
#sed -i "s/g/G/g" $uce;
#done


#for uce in simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta/*;
#do
#sed -i "s/t/T/g" $uce;
#done


#for uce in simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta/*;
#do
#sed -i "s/?/N/g" $uce;
#done


#for uce in simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta/*;
#do
#sed -i "s/ApTosTiChus_simus_0/Aptostichus_simus_0/g" $uce;
#done


#for uce in simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta/*;
#do
#sed -i "s/ApTosTiChus_simus_1/Aptostichus_simus_1/g" $uce;
#done


#for uce in simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta/*;
#do
#sed -i "s/Aptostichus_simus_//g" $uce;
#done




