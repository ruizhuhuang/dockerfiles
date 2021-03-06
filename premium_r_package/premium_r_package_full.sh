#!/bin/bash
##############################################
# base image of python, r, scala, java
###############################################
yum install -y wget 
yum install -y which 
yum install -y vim fontconfig libXt zip unzip java-1.8.0-openjdk-devel git
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-2.el7_8.x86_64/jre/bin/java
wget http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.rpm
yum install scala-2.11.8.rpm -y 
curl https://bintray.com/sbt/rpm/rpm | tee /etc/yum.repos.d/bintray-sbt-rpm.repo
yum install sbt -y

useradd tacc
su tacc << 'EOF'
cd ~;mkdir apps;cd apps
echo 'export LANG=en_US.UTF-8' >> ~/.bashrc
echo 'JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.252.b09-2.el7_8.x86_64/jre/bin/java' >> ~/.bashrc
. ~/.bashrc
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh -b
~/miniconda3/bin/conda init
. ~/.bashrc
conda install -y -c r r
conda install -y -c anaconda jupyter

EOF

chmod -R go+rX /home/ 


###################################
# install PReMiuM R package
###################################
su tacc << 'EOF'
. ~/.bashrc

cd ~/apps

conda install -c r r-tidyverse r-data.table  r-configparser  r-matrix -y
conda install -c conda-forge r-spdep  r-rgdal -y
conda install -c bioconda r-plotrix -y 
conda install -c conda-forge  r-gamlss.dist r-rcppeigen -y
conda install -c r r-ald -y 
wget https://cran.r-project.org/src/contrib/stringi_1.4.6.tar.gz
R CMD INSTALL stringi_1.4.6.tar.gz
wget https://cran.r-project.org/src/contrib/KernSmooth_2.23-17.tar.gz
R CMD INSTALL KernSmooth_2.23-17.tar.gz
wget https://cran.r-project.org/src/contrib/Matrix_1.2-18.tar.gz
R CMD INSTALL Matrix_1.2-18.tar.gz
wget https://cran.r-project.org/src/contrib/PReMiuM_3.2.3.tar.gz
R CMD INSTALL PReMiuM_3.2.3.tar.gz


EOF

chmod -R go+rX /home/

