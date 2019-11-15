#!/bin/sh 

ESESC_BIN=${1:-../main/esesc}
export ESESC_ReportFile="callESESC"
export ESESC_BenchName="./Bubble.rv"

export ESESC_samplerSel="TASS"
export ESESC_TASS_nInstSkip="4e9"
export ESESC_TASS_nInstMax="8e9"

if [ -f $ESESC_BIN ]; then
  $ESESC_BIN 
else
  $ESESC_BenchName 
fi
exit 0
