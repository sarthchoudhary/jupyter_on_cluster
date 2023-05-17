#!/bin/bash
#SBATCH --job-name=GPU_jupyter
#SBATCH --gres=gpu:1
#SBATCH --time=09:55:00
#SBATCH --mem=8GB
#SBATCH --output=%N-%j.out
#SBATCH --mail-user=sarthak@camk.edu.pl
#SBATCH --mail-type=ALL ## Or 'ALL' for Begin, End, Fail

# cat /etc/hosts
jupyter lab --no-browser --ip=0.0.0.0 --port=8888
