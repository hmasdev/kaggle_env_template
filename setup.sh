#!/bin/bash
# Experiment Setup Script
set -xe

# const
VENV="venv"
REQUIREMENTS="initial-requirements.txt"

DATA_DIREC="./data"
RAW_DATA_DIREC="./data/raw"
RESULT_DIREC="./results"
MODEL_DIREC="./models"
NOTEBOOK_DIREC="./notebook"
DATA_NOTEBOOK_DIREC="./notebook/data"
EDA_NOTEBOOK_DIREC="./notebook/eda"
ML_NOTEBOOK_DIREC="./notebook/models"

COMPETITION_NAME="$1"

# Create a virtual environment
python -m venv $VENV
source ./$VENV/Scripts/activate
./$VENV/Scripts/python -m pip install -r $REQUIREMENTS

# make dirs
mkdir -p $DATA_DIREC
mkdir -p $RAW_DATA_DIREC
mkdir -p $RESULT_DIREC
mkdir -p $MODEL_DIREC
mkdir -p $NOTEBOOK_DIREC
mkdir -p $DATA_NOTEBOOK_DIREC
mkdir -p $EDA_NOTEBOOK_DIREC
mkdir -p $ML_NOTEBOOK_DIREC

# Download
./$VENV/Scripts/kaggle competitions download -c $COMPETITION_NAME -p $RAW_DATA_DIREC
unzip -d $RAW_DATA_DIREC $RAW_DATA_DIREC/$COMPETITION_NAME
