----------
果壳生物网站：[http://www.bioguoke.com/](http://www.bioguoke.com/)

### ASA (Asian Screening Array) 标准版本芯片位点信息
* ASA 基因型数据格式白皮书
ASA芯片上所有的位点重新与基因组比对，将所有SNP位点转换成正义链，与NGS数据保持一致，便于后续数据整合。
### <font color=#FF6347 >ASA-CHIA 定制芯片真实测试数据</font>
* ASA-CHIA 定制版 10个男性样本 + 10个女性样本测试数据
    * 链接：[https://pan.baidu.com/s/11D5fbIQWqG6lY9J0SLXTTw](https://pan.baidu.com/s/11D5fbIQWqG6lY9J0SLXTTw) 
    * 密码：5uep
### <font color=#FF6347 >ASA-MD 芯片真实测试数据</font>
* ASA-MD 24个样本测试数据
    * 链接：[https://pan.baidu.com/s/1FdgsU-524BImBonkmPx_7A](https://pan.baidu.com/s/1FdgsU-524BImBonkmPx_7A) 
    * 密码：ifpx
### <span id = "jump">ASA 标准版本测试数据</span>
* 24个样本 ASA标准版本数据
    * 链接: [https://pan.baidu.com/s/1CEM0p5cKl5PZMer1j7bYIQ](https://pan.baidu.com/s/1CEM0p5cKl5PZMer1j7bYIQ)
    * 密码: 6ccq
* 24个样本ASA标准版的plink格式数据
    * 链接: [https://pan.baidu.com/s/1fyhLeAEWITe95TOCph82GQ](https://pan.baidu.com/s/1fyhLeAEWITe95TOCph82GQ)
    * 密码: av4j
    * 数据格式为plink
* 20个样本的GSA-Multi Disease 2.0芯片数据
    * 链接: [https://pan.baidu.com/s/1sfBreJ-QCgTn2fTFSlX-Iw](https://pan.baidu.com/s/1sfBreJ-QCgTn2fTFSlX-Iw)
    * 密码: gmik

### ASA 标准版本填充（imputation）数据
* 1个样本ASA标准版芯片填充数据
    * 链接: [https://pan.baidu.com/s/1boKul2eXfzgq4dU74JiGmA](https://pan.baidu.com/s/1boKul2eXfzgq4dU74JiGmA)
    * 密码: bd2a
### How to Prepare the Data
```
awk '{print "chr"$1,$3-1,$3,$2}' OFS="\t" ASA-MD.map > ASA-MD.hg19.txt
awk '{print "chr"$2,$3-1,$3}' OFS="\t" ASA-CHIA.sites.txt > ASA-CHIA.hg19.txt
bedtools intersect -wao -a ASA-CHIA.hg19.txt -b ~/hpc/db/hg19/snp150.hg19.txt > ASA-CHIA.hg19.snp150.txt
awk '{print $1,$2,$3,$7}' OFS="\t" ASA-CHIA.hg19.snp150.bed | sort -u > ASA-CHIA.hg19.bed
liftOver miRNA.mature.hg38.bed hg38ToHg19.over.chain.gz miRNA.mature.hg19.bed unmap
bedtools intersect -wo -a /home/guosa/hpc/db/hg19/miRNA.mature.hg19.bed -b ASA-CHIA.hg19.bed
```


  [1]: https://github.com/bioguoke/RS_white-paper
