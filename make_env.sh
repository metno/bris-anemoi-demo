git clone git@github.com:ecmwf/anemoi-core.git

module load python
python -m venv .venv
source .venv/bin/activate

pip install torch==2.6.0 torchvision==0.21.0 torchaudio==2.6.0 --index-url https://download.pytorch.org/whl/cu124
pip install torch-cluster torch-sparse torch-scatter -f https://data.pyg.org/whl/torch-2.6.0+cu124.html
pip install -e anemoi-core/graphs
pip install -e anemoi-core/models
pip install -e anemoi-core/training
pip install -e anemoi-core/graphs --no-deps #training sometimes overwrites the editable version
pip install -e anemoi-core/models --no-deps #training sometimes overwrites the editable version

#Optional deps (that we need)
pip install trimesh

