# Dockerize DataScience

> Bring your Data Science tasks to Docker! :whale:

[![Medium article: How to dockerize Data Science](https://img.shields.io/badge/Medium%20article-How%20to%20dockerize%20python%20environments-black)](https://franzdiebold.medium.com/how-to-dockerize-python-environments-ce8d2ce7bf32)
[![Medium article: How to dockerize Data Science](https://img.shields.io/badge/Medium%20article-How%20to%20dockerize%20Data%20Science-black)](https://franzdiebold.medium.com/how-to-dockerize-data-science-dd396962a0f)
[![GitHub license](https://img.shields.io/github/license/FranzDiebold/dockerize-datascience)](./LICENSE)

!["Docker, Docker everywhere" meme](img/docker-everywhere-meme.jpg)

This is the code repository for the accompanying Medium article series _"How to dockerize [x]"_:

- [_"How to dockerize Python environments"_](https://franzdiebold.medium.com/how-to-dockerize-python-environments-ce8d2ce7bf32)
- [_"How to dockerize Data Science"_](https://franzdiebold.medium.com/how-to-dockerize-data-science-dd396962a0f)

## Installation

Add the content of [`dockerize-datascience.sh`](dockerize-datascience.sh) to your `.bashrc` or `.zshrc` file.

## Usage

### Python

Choose your Python version:

| Python version | Command      |
| -------------: | ------------ |
|            3.8 | `python3.8`  |
|            3.9 | `python3.9`  |
|           3.10 | `python3.10` |
|         latest | `python`     |

This will run your python script or your interactive Python session in a _Docker container_. The current directory is mounted into the container.
If you want to install dependencies, you should use the _Python environment_.

### Python environment

In order to create a new or use an existing Python environment, run one of the following commands in your _project folder_:

| Python version | Command      |
| -------------: | ------------ |
|            3.8 | `pyenvd3.8`  |
|            3.9 | `pyenvd3.9`  |
|           3.10 | `pyenvd3.10` |
|         latest | `pyenvd`     |

The current directory is mounted into the container.

To delete the environment run `pyenvd_del` in your project folder.

### Jupyter (JupyterLab)

!["Dockerizing Data Science" meme](img/dockerizing-data-science-meme.jpg)

For [Jupyter](https://jupyter.org/) run

```shell
jupyter
```

This uses the [`datascience-ultimate`](https://github.com/FranzDiebold/docker-datascience-ultimate) Docker image.

The current directory is mounted into the container.

If you want to install dependencies, you should use the Jupyter environment.

### Jupyter environment

In order to create a new or use an existing Jupyter environment, run the following command in your _project folder_:

```shell
jupyterenvd
```

or shorter

```shell
jed
```

This uses the [`datascience-ultimate`](https://github.com/FranzDiebold/docker-datascience-ultimate) Docker image.

The current directory is mounted into the container.

To delete the environment run `jupyterenvd_del`.
