#!/bin/bash

#note: to enter phyluce environment: module load phyluce, then source activate $
#to exit: source deactivate
# doesn't like # within command blocks

#SBATCH --job-name=iqtree
#SBATCH --nodes=1
#SBATCH --ntasks=4                               
#SBATCH --mem=64G                               
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --time=2-20:00                          
#SBATCH --partition=high2                           
#SBATCH --reservation=                           
#SBATCH --output=iqtree-%N-%j.out               
#SBATCH --error=iqtree-%N-%j.err                
#SBATCH --mail-type=ALL                          
#SBATCH --mail-user=ejochim@ucdavis.edu  

module load iq-tree/2.3.1



#iqtree2 -s /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-75p-taxa-trimaldefault-raxml/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-75p-taxa-trimaldefault-raxml.phylip \
#    -p /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-75p-taxa-trimaldefault-raxml/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-75p-taxa-trimaldefault-raxml.partitions \
#    -m MFP+MERGE \
#    -B 1000 -alrt 1000 \
#    -T AUTO --prefix corrected_best_simus_modelfind_75p

#iqtree2 -s /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-85p-taxa-trimaldefault-raxml/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-85p-taxa-trimaldefault-raxml.phylip \
#    -p /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-85p-taxa-trimaldefault-raxml/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-85p-taxa-trimaldefault-raxml.partitions \
#    -m MFP+MERGE \
#    -B 1000 -alrt 1000 \
#    -T AUTO --prefix corrected_best_simus_modelfind_85p

#iqtree2 -s /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-95p-taxa-trimaldefault-raxml/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-95p-taxa-trimaldefault-raxml.phylip \
#    -p /group/jbondgrp2/emmaJochim/UCE_stuff/simus_manuscript/no_AP/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-95p-taxa-trimaldefault-raxml/corrected_simus_UCE_no_AP_mafft-nexus-clean-min-95p-taxa-trimaldefault-raxml.partitions \
#    -m MFP+MERGE \
#    -B 1000 -alrt 1000 \
#    -T AUTO --prefix corrected_best_simus_modelfind_95p
