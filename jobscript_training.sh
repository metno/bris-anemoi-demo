#!/bin/bash

#SBATCH -A EUHPC_R04_079
#SBATCH -p boost_usr_prod
#SBATCH --qos=boost_qos_dbg #Debug queue, comment out for normal runs
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --gpus-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --mem=0
#SBATCH --time=00:30:00
#SBATCH --job-name=anemoi_demo


export HYDRA_FULL_ERROR=1

CONFIG_NAME=training_config_demo.yaml
CONFIG_DIR= #PATH TO TRAINING CONFIG DIRECTORY, only needed if it is not in the anemoi-training config directory

source $(pwd -P)/.venv/bin/activate

srun anemoi-training train --config-dir=$CONFIG_DIR --config-name=$CONFIG_NAME

