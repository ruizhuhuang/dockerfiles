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


