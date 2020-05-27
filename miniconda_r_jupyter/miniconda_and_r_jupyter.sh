yum install -y wget 
yum install -y which 
yum install -y vim fontconfig libXt zip unzip java-1.8.0-openjdk-devel
useradd tacc
su tacc << 'EOF'
cd ~;mkdir apps;cd apps
echo 'export LANG=en_US.UTF-8' >> ~/.bashrc
. ~/.bashrc
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh -b
~/miniconda3/bin/conda init
. ~/.bashrc
conda install -y -c r r
conda install -y -c anaconda jupyter

EOF

chmod -R go+rX /home/ 

