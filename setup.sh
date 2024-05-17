#!/bin/bash
# Experiment Setup Script
set -xe

# const
VENV="venv"
REQUIREMENTS="initial-requirements.txt"

DATA_DIREC="./data"
KAGGLE_INPUT="./kaggle/input"
RAW_DATA_DIREC="./data/raw"
RESULT_DIREC="./results"
MODEL_DIREC="./models"
NOTEBOOK_DIREC="./notebooks"

COMPETITION_NAME="$1"

# Create a virtual environment
python -m venv $VENV
source ./$VENV/Scripts/activate
./$VENV/Scripts/python -m pip install -r $REQUIREMENTS

# make dirs
mkdir -p $DATA_DIREC
mkdir -p $KAGGLE_INPUT
mkdir -p $RAW_DATA_DIREC
mkdir -p $RESULT_DIREC
mkdir -p $MODEL_DIREC
mkdir -p $NOTEBOOK_DIREC

# Download
./$VENV/Scripts/kaggle competitions download -c $COMPETITION_NAME -p $RAW_DATA_DIREC
unzip -d $RAW_DATA_DIREC $RAW_DATA_DIREC/$COMPETITION_NAME
cp -r $RAW_DATA_DIREC/$COMPETITION_NAME $KAGGLE_INPUT/
