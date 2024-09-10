#!/bin/bash
# Experiment Setup Script
set -xe

# const
DATA_DIREC="./data"
KAGGLE_INPUT="./kaggle/input"
RAW_DATA_DIREC="./data/raw"
RESULT_DIREC="./results"
MODEL_DIREC="./models"
NOTEBOOK_DIREC="./notebooks"

COMPETITION_NAME="$1"

# Create a virtual environment
# TODO: improve the way to specify extras
uv sync --extra gpu

# make dirs
mkdir -p $DATA_DIREC
mkdir -p $KAGGLE_INPUT/$COMPETITION_NAME/
mkdir -p $RAW_DATA_DIREC
mkdir -p $RESULT_DIREC
mkdir -p $MODEL_DIREC
mkdir -p $NOTEBOOK_DIREC

# Download
uv run kaggle competitions download -c $COMPETITION_NAME -p $RAW_DATA_DIREC
unzip -d $RAW_DATA_DIREC $RAW_DATA_DIREC/$COMPETITION_NAME
cp -r $RAW_DATA_DIREC/* $KAGGLE_INPUT/$COMPETITION_NAME/
