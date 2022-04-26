# Heroku CLI Docker Image

## Introduction

Unlike Google Cloud, Heroku does not provide an official CLI Docker image for users on [Docker Hub](https://hub.docker.com/u/heroku). This is a custom Docker image containing Heroku CLI. It is especially useful for application deployment on Heroku.

## Usages

### Build Docker Image

To build the Docker image, please run the following command.

```bash
$ docker build -f heroku-cli.Dockerfile --no-cache --tag=heroku-cli:0.0.1 .
```

In case the user wants to configure the Git user information, please use the personal Git user email and user name and run the following command.

```bash
$ docker build -f heroku-cli.Dockerfile --build-arg GIT_USER_EMAIL="dukeleimao@gmail.com" --build-arg GIT_USER_NAME="Lei Mao" --no-cache --tag=heroku-cli:0.0.1 .
```

### Run Docker Container

To run the Docker container, please run the following command.

```bash
$ docker run -it --rm heroku-cli:0.0.1
```

### Heroku CLI Example

To deploy a sample app on Heroku, please use the [Heroku Docker Example](https://github.com/leimao/Heroku-Docker-Example) and follow the instructions in the README.

