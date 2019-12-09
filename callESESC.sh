#!/bin/sh 
ESESC_BIN=${1:-../main/esesc}
export ESESC_ReportFile="callESESC"
export ESESC_BenchName="./Bubble.rv"
export ESESC_samplerSel="TASS"

export ESESC_PrivL2_missDelay="0"
export ESESC_PrivL2_hitDelay="0"
export ESESC_DL1_core_bsize="64"
export ESESC_DL1_core_missDelay="0"
export ESESC_DL1_core_hitDelay="0"
export ESESC_IL1_core_bsize="64"
export ESESC_IL1_core_hitDelay="0"
export ESESC_IL1_core_missDelay="0"

export ESESC_tradCORE_decodeDelay="1"
export ESESC_tradCORE_renameDelay="1"
export ESESC_tradCORE_retireDelay="0"


if [ -f $ESESC_BIN ]; then
  $ESESC_BIN 
else
  $ESESC_BenchName 
fi
exit 0
