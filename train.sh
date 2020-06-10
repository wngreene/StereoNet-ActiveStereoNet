#!/usr/bin/env bash

DATAPATH=/data/sceneflow
SAVEPATH=/stereonet/results

python ./main8Xmulti.py --datapath ${DATAPATH} --save_path ${SAVEPATH}
