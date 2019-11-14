#!/bin/sh 
#PBS -l nodes=1:ppn=2 -l walltime=240:00:00
#PBS -M renau@ucsc.edu
ESESC_BIN=${1:-../main/esesc}
export ESESC_ReportFile="callESESC"
export ESESC_BenchName="./CuckooFilter/cuckoo.rv 1 2"
#export ESESC_ReportFile="spec06_bzip2"
#export ESESC_BenchName="./bins/spec06_bzip2.riscv64  ./data/spec06/401.bzip2/input.combined"
#export ESESC_samplerSel="TASS"
export ESESC_TASS_nInstSkip="2.04e9"
export ESESC_TASS_nInstMax="4e9"
export ESESC_TASS_nInstRabbit="3500e4"
#export ESESC_ThisSOCTech_frequency="1700e7"
#export ESESC_memLatency="120"
#export ESESC_IL1_core_hitDelay="16"
#export ESESC_PrivL2_hitDelay="40"
if [ -f $ESESC_BIN ]; then
  $ESESC_BIN 
else
  $ESESC_BenchName 
fi
exit 0
