#!/bin/bash

CUDA_VISIBLE_DEVICES=2,3,4,5,6,7 PYTHONPATH=.. python3 ../examples/run_glue.py \
  --task_name ssc \
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir ~/data-eval \
  --model_type bert \
  --model_name_or_path bert-base-uncased \
  --max_seq_length 256 \
  --per_gpu_train_batch_size 128 \
  --learning_rate 2e-5 \
  --num_train_epochs 3.0 \
  --output_dir ~/eval/ssc-base-256/

