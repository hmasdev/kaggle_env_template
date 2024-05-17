#!/bin/bash
# Setup Script to make GPU available
set -xe

VENV="venv"
CUDA="cu118"

# torch
./$VENV/Scripts/python -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/{$CUDA}

# lightgbm
# TBD

# keras
# TBD

# dask
# TBD
