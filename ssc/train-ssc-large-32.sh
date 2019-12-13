#!/bin/bash

CUDA_VISIBLE_DEVICES=2,3,4,5,6,7 PYTHONPATH=.. python3 ../examples/run_glue.py \
  --task_name ssc \
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir ~/data-train \
  --model_type bert \
  --model_name_or_path bert-large-uncased \
  --max_seq_length 32 \
  --per_gpu_train_batch_size 256 \
  --per_gpu_eval_batch_size 32 \
  --save_steps=0 \
  --learning_rate 2e-5 \
  --num_train_epochs 3.0 \
  --output_dir ~/results/ssc-large-32/
