#!/usr/bin/env bash
# Variaveis

SP="Arapaima_gigas"
R1="seqs/${SP}_R1.fastq.gz"
R2="seqs/${SP}_R2.fastq.gz"
R1_paired="limpos/${SP}_R1_paired.fastq.gz"
R1_unpaired="limpos/${SP}_R1_unpaired.fastq.gz"
R2_paired="limpos/${SP}_R2_paired.fastq.gz"
R2_unpaired="limpos/${SP}_R2_unpaired.fastq.gz"

# Rodando

trimmomatic PE \
    "$R1" "$R2" \
    "$R1_paired" "$R1_unpaired" \
    "$R2_paired" "$R2_unpaired" \
    ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 \
    LEADING:3 \
    TRAILING:3 \
    SLIDINGWINDOW:4:20\
    MINLEN:50