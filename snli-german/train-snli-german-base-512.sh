#!/bin/bash

CUDA_VISIBLE_DEVICES=3,4,5,6,7 PYTHONPATH=.. python3 ../examples/run_glue.py \
  --task_name snli-german \
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir ~/snli-german \
  --model_type bert \
  --model_name_or_path ~/bert-base-german-dbmdz-uncased \
  --max_seq_length 512 \
  --per_gpu_train_batch_size 32 \
  --learning_rate 2e-5 \
  --num_train_epochs 3.0 \
  --output_dir ~/results/snli-german-base-512/
