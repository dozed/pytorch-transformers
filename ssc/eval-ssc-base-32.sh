#!/bin/bash

CUDA_VISIBLE_DEVICES=0,1,2,3,4,5 PYTHONPATH=.. python3 run_classifier.py \
  --task_name ssc \
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir ~/data-eval \
  --bert_model bert-base-uncased \
  --max_seq_length 32 \
  --train_batch_size 1024 \
  --learning_rate 2e-5 \
  --num_train_epochs 3.0 \
  --output_dir ~/eval/ssc-base-32/

