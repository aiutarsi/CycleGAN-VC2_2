#!/bin/sh
#SBATCH -p v
#SBATCH --gres=gpu:1
#SBATCH --time=48:00:00
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

python3 train.py
