#!/bin/bash

set -x
set -e

#./eval-ssc-base-64.sh
#./eval-ssc-base-32.sh
#./eval-ssc-base-128.sh
#./eval-ssc-base-256.sh
#./eval-ssc-base-512.sh
#./eval-ssc-large-512.sh
#
#./eval-ssc-base-512-notrunctrain.sh
#./eval-ssc-large-512-notrunctrain.sh
#
#cp -R ~/eval/ssc-base-512-notrunctrain ~/eval/ssc-base-512-notrunctrain-notrunctest
#cp -R ~/eval/ssc-large-512-notrunctrain ~/eval/ssc-large-512-notrunctrain-notrunctest
#
#./eval-ssc-base-512-notrunctrain-notrunctest.sh
#./eval-ssc-large-512-notrunctrain-notrunctest.sh

./train-ssc-base-32.sh
./train-ssc-base-64.sh
./train-ssc-base-128.sh
./train-ssc-base-256.sh
./train-ssc-large-32.sh
./train-ssc-large-64.sh
./train-ssc-large-128.sh
./train-ssc-large-256.sh

./train-ssc-base-512.sh
./train-ssc-large-512.sh
./train-ssc-base-512-notrunctrain.sh
./train-ssc-large-512-notrunctrain.sh

cp -R ~/results/ssc-base-512-notrunctrain ~/results/ssc-base-512-notrunctrain-notrunceval
cp -R ~/results/ssc-large-512-notrunctrain ~/results/ssc-large-512-notrunctrain-notrunceval

./train-ssc-base-512-notrunctrain-notrunceval.sh
./train-ssc-large-512-notrunctrain-notrunceval.sh
