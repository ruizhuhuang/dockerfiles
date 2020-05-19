# Docker Build Files

Docker files and shell scripts to build a image with latest miniconda, R, Java and Jupyter from centos:7.6.1810. 
miniconda_and_r_jupyter.sh is used to install some required packages with font and X11 supports

## Getting Started

Install Dockter following the link in the Prerequisites. Then build the image.

### Prerequisites

[Get Docker](https://docs.docker.com/get-docker/) - install Docker for your platform(Mac, Windows or Linux)
```
For example, for Centos
$ sudo yum install -y yum-utils

$ sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
```

### Build the image

Steps to build the images as 'miniconda_r_jupyter:1.0'

```
$ git clone https://github.com/ruizhuhuang/dockerfiles

$ cd dockerfiles/miniconda_r_jupyter/

$ docker build --tag miniconda_r_jupyter:1.0 .
```

## Run the docker image
```
$ docker run -it --rm miniconda_r_jupyter:1.0
```

## Test and Check Versions
```
(base) [root@be189592f9fe ~]# cat /etc/*elease
CentOS Linux release 7.6.1810 (Core)

(base) [root@be189592f9fe ~]# python --version
Python 3.7.6

(base) [root@be189592f9fe ~]# R --version
R version 3.6.1 (2019-07-05) -- "Action of the Toes"

(base) [root@be189592f9fe ~]# java -version
openjdk version "1.8.0_252"
OpenJDK Runtime Environment (build 1.8.0_252-b09)
OpenJDK 64-Bit Server VM (build 25.252-b09, mixed mode)

(base) [root@be189592f9fe ~]# jupyter --version
jupyter core     : 4.6.3
jupyter-notebook : 6.0.3
qtconsole        : 4.7.4
ipython          : 7.13.0
ipykernel        : 5.1.4
jupyter client   : 6.1.3
jupyter lab      : not installed
nbconvert        : 5.6.1
ipywidgets       : 7.5.1
nbformat         : 5.0.6
traitlets        : 4.3.3

```

## Built With

* [Docker 19.03.8](https://hub.docker.com/editions/community/docker-ce-desktop-mac/) - Docker for Mac
* [Miniconda lastest](https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh) - Python 3.7
* [R 3.6.1](https://www.r-project.org/) - conda install -y -c r r
* [jupyter](https://jupyter.org/) - conda install -y -c anaconda jupyter


## Authors

* **Ruizhu Huang** 


## License

This project is licensed under the MIT License.


