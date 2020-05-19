# Docker Build Files

Docker files and shell scripts to build image with latest miniconda, R, Java and Jupyter from centos:7.6.1810. 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

[Get Docker](https://docs.docker.com/get-docker/) - install Docker for your platform
```
Docker for Centos
$ sudo yum install -y yum-utils

$ sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
```

### Installing

Steps to build the images as 'miniconda_r_jupyter:1.0'

```
$ git clone https://github.com/ruizhuhuang/dockerfiles

$ cd dockerfiles/miniconda_r_jupyter/

$ docker build --tag miniconda_r_jupyter:1.0 .
```

## Run docker image
```
$ docker run -it --rm miniconda_r_jupyter:1.0
```

## Built With

* [Docker 19.03.8](https://hub.docker.com/editions/community/docker-ce-desktop-mac/) - Docker for Mac
* [Miniconda lastest](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh) - Python 3.7
* [R](https://www.r-project.org/) - Install by conda install -y -c r r


## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Ruizhu Huang** 

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details


