#!/bin/sh 
#PBS -l nodes=1:ppn=2 -l walltime=240:00:00
#PBS -M renau@ucsc.edu
ESESC_BIN=${1:-../main/esesc}
export ESESC_ReportFile="callESESC"
#export ESESC_BenchName="./CuckooFilter/cuckoo.rv 1 2"
export ESESC_BenchName="./Bubble.rv"
#export ESESC_ReportFile="spec06_bzip2"
#export ESESC_BenchName="./bins/spec06_bzip2.riscv64  ./data/spec06/401.bzip2/input.combined"
export ESESC_samplerSel="TASS"
#export ESESC_memLatency="0"
export ESESC_PrivL2_missDelay="0"
export ESESC_PrivL2_hitDelay="0"
#export ESESC_PrivL2_bsize="64"
export ESESC_DL1_core_bsize="64"
export ESESC_DL1_core_missDelay="0"
export ESESC_DL1_core_hitDelay="0"
#export ESESC_PerCore_ITLB_bsize="8*4096"
export ESESC_IL1_core_bsize="64"
#export ESESC_IL1_core_assoc="8"
#export ESESC_L3Cache_bsize="128"
export ESESC_IL1_core_hitDelay="0"
export ESESC_IL1_core_missDelay="0"
#export ESESC_L3Cache_hitDelay="0"
export ESESC_tradCORE_decodeDelay="1"
export ESESC_tradCORE_renameDelay="1"
export ESESC_tradCORE_retireDelay="0"




if [ -f $ESESC_BIN ]; then
  $ESESC_BIN 
else
  $ESESC_BenchName 
fi
exit 0
