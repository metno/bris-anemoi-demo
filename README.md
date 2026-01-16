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


### Running Bris
Config with correct dataset paths and a converged checkpoint (experiment ws_loss_r2) in inference/bris.yaml

Each checkpoint requires the specific version of anemoi models used to train the model (or one that is close). The included checkpoint should work with commit **2b6c2055c0155b6cf5e58355f0358245dafd7705** of https://github.com/ecmwf/anemoi-core
