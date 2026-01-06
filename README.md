# bris-anemoi-demo

Demo for running anemoi training and bris inference

### Create environment
Clone and install editable versions of anemoi and bris-inference with all dependencies in ./.venv

    bash make_env.sh
    bash make_env_infer.sh

### Training
Need to set correct paths in jobscript_training.sh and training/training_config_demo.yaml

    sbatch jobscript_training.sh

Can see training metrics (per variable loss, overall loss) in output/logs/mlflow folder.
Model checkpoints stored in output/checkpoint

### Inference
Need to set correct paths in jobscript_inference.sh and training/inference_config_demo.yaml

    sbatch jobscript_infer.sh
