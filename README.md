# Kaggle Experiment Environment Template

![GitHub top language](https://img.shields.io/github/languages/top/hmasdev/kaggle_env_template)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/hmasdev/kaggle_env_template?sort=semver)
![GitHub](https://img.shields.io/github/license/hmasdev/kaggle_env_template)
![GitHub last commit](https://img.shields.io/github/last-commit/hmasdev/kaggle_env_template)

This repository provides a template of Kaggle experiment environment.

## Requirements

- `python`
- `uv`
- `bash`

## How to Use

You can create the environment template with executing the following 3 lines:

```sh
git clone https://github.com/hmasdev/kaggle_env_template.git $YOUR_ENV_DIR_NAME
cd $YOUR_ENV_DIR_NAME
./setup.sh $KAGGLE_COMPETITION_NAME
```

In the above commands, `$YOUR_ENV_DIR_NAME` is the name of the dirctory which you want to create and `$KAGGLE_COMPETITION_NAME` is the name of a Kaggle competition.
For example, when you want to create the experiment environment for [https://www.kaggle.com/competitions/titanic/overview](https://www.kaggle.com/competitions/titanic/overview), `$KAGGLE_COMPETITION_NAME` is `titanic`, i.e. `$KAGGLE_COMPETITION_NAME` will be the string between [https://www.kaggle.com/competitions/](https://www.kaggle.com/competitions/) and /overview in the URL of the competition's overview.

After executing `./setup.sh $KAGGLE_COMPETITION_NAME`, you will see the following directory structure:

```sh
.
├───.venv       # This is the python virtual environment for this project
|───kaggle      # This is a dirctory for datasets
│   └───input
│       └───{the name of compedition}
├───data        # This is a dirctory for datasets
│   └───raw
│       ├───{The zip file of the competition data}
│       └───{The contents contained in the zip file, typically CSV files}
├───models      # This is a directory for trained models
└───notebook
```

## LICENSE

[MIT](https://github.com/hmasdev/kaggle_env_template/tree/main/LICENSE)

## Authors

[hmasdev](https://github.com/hmasdev)
