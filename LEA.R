install.packages(c("fields", "RColorBrewer", "mapplots"))

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.14")

biocLite("LEA")

BiocManager::install("LEA")

install.packages("marmap")

source("http://membres-timc.imag.fr/Olivier.Francois/Conversion.R")
source("http://membres-timc.imag.fr/Olivier.Francois/POPSutilities.R")
library(LEA)
library(mapplots)

# install.packages("devtools")
devtools::install_github("bcm-uga/TESS3_encho_sen")
library(tess3r)

source("http://membres-timc.imag.fr/Olivier.Francois/Conversion.R")
source("http://membres-timc.imag.fr/Olivier.Francois/POPSutilities.R")


install.packages("devtools")
devtools::install_github("bcm-uga/LEA")



######ancestry plot for 75p phased SNPs for 32 taxa
######RANDSNP1
struct2geno("~/Desktop/Dissertation/Ap_simus/manuscript/SNPs/snp_extraction_from_alignment/corrected_phased/RANDSNP1/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta_snps_nucleotides_incl_missing_RANDSNP1.str", 
            ploidy = 2, FORMAT = 2,
            extra.row = 0, extra.column = 0)

obj.simus1 = snmf("~/Desktop/Dissertation/Ap_simus/manuscript/SNPs/snp_extraction_from_alignment/corrected_phased/RANDSNP1/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta_snps_nucleotides_incl_missing_RANDSNP1.str.geno", 
                 K = 1:10, ploidy = 2, entropy = T,
                 alpha = 100, CPU = 1, project = "new")

plot(obj.simus1, col = "#0d0887", cex = 1.4, pch = 19)

ce1 <- cross.entropy(obj.simus1, K=3)

best1 <- which.min(ce1)

barchart(obj.simus1, K=3, run=best1, border=NA, space=0, xlab="Individuals", ylab="Ancestry proportions", 
         main="RANDSNP1", col = c("#cc4778", "#f0f921", "#0d0887")) -> bp

axis(1, at = 1:length(bp$order), 
     labels = bp$order, las = 3, 
     cex.axis = .4)


##########RANDSNP2
struct2geno("~/Desktop/Dissertation/Ap_simus/manuscript/SNPs/snp_extraction_from_alignment/corrected_phased/RANDSNP2/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta_snps_nucleotides_incl_missing_RANDSNP2.str", 
            ploidy = 2, FORMAT = 2,
            extra.row = 0, extra.column = 0)

obj.simus2 = snmf("~/Desktop/Dissertation/Ap_simus/manuscript/SNPs/snp_extraction_from_alignment/corrected_phased/RANDSNP2/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta_snps_nucleotides_incl_missing_RANDSNP2.str.geno", 
                  K = 1:10, ploidy = 2, entropy = T,
                  alpha = 100, CPU = 1, project = "new")

plot(obj.simus2, col = "#0d0887", cex = 1.4, pch = 19)

ce2 <- cross.entropy(obj.simus2, K=3)

best2 <- which.min(ce2)

barchart(obj.simus2, K=3, run=best2, border=NA, space=0, xlab="Individuals", ylab="Ancestry proportions", 
         main="RANDSNP2", col = c("#cc4778","#0d0887","#f0f921" )) -> bp

axis(1, at = 1:length(bp$order), 
     labels = bp$order, las = 3, 
     cex.axis = .4)



######RANDSNP3
struct2geno("~/Desktop/Dissertation/Ap_simus/manuscript/SNPs/snp_extraction_from_alignment/corrected_phased/RANDSNP3/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta_snps_nucleotides_incl_missing_RANDSNP3.str", 
            ploidy = 2, FORMAT = 2,
            extra.row = 0, extra.column = 0)

obj.simus3 = snmf("~/Desktop/Dissertation/Ap_simus/manuscript/SNPs/snp_extraction_from_alignment/corrected_phased/RANDSNP3/simus_all_phased_mafft-nexus-edge-trimmed-keep-ambiguous-clean-min-75p-taxa-fasta_snps_nucleotides_incl_missing_RANDSNP3.str.geno", 
                  K = 1:10, ploidy = 2, entropy = T,
                  alpha = 100, CPU = 1, project = "new")

plot(obj.simus3, col = "#0d0887", cex = 1.4, pch = 19)

ce3 <- cross.entropy(obj.simus3, K=3)

best3 <- which.min(ce3)

barchart(obj.simus3, K=3, run=best3, border=NA, space=0, xlab="Individuals", ylab="Ancestry proportions", 
         main="RANDSNP3", col = c( "#f0f921","#cc4778", "#0d0887")) -> bp

axis(1, at = 1:length(bp$order), 
     labels = bp$order, las = 3, 
     cex.axis = .4)

