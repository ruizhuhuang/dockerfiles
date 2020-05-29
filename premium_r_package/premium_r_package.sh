#!/bin/bash

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
