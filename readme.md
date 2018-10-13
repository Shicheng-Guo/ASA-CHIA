awk '{print "chr"$1,$3-1,$3,$2}' OFS="\t" ASA-MD.map > ASA-MD.hg19.txt
awk '{print "chr"$2,$3-1,$3}' OFS="\t" ASA-CHIA.sites.txt > ASA-CHIA.hg19.txt
bedtools intersect -wao -a ASA-CHIA.hg19.txt -b ~/hpc/db/hg19/snp150.hg19.txt > ASA-CHIA.hg19.snp150.txt
awk '{print $1,$2,$3,$7}' OFS="\t" ASA-CHIA.hg19.snp150.bed | sort -u > ASA-CHIA.hg19.bed
liftOver miRNA.mature.hg38.bed hg38ToHg19.over.chain.gz miRNA.mature.hg19.bed unmap
bedtools intersect -wo -a /home/guosa/hpc/db/hg19/miRNA.mature.hg19.bed -b ASA-CHIA.hg19.bed
