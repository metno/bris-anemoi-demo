#!/bin/bash

#SBATCH -A EUHPC_R04_079
#SBATCH -p boost_usr_prod
#SBATCH --qos=boost_qos_dbg
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --gpus-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --mem=0
#SBATCH --time=00:30:00
#SBATCH --job-name=anemoi_demo
#SBATCH --exclusive

export HYDRA_FULL_ERROR=1

CONFIG= # PATH TO INFERENCE CONFIG FILE

source $(pwd -P)/.venv/bin/activate

srun bris --config=$CONFIG

