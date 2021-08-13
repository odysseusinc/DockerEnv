# Miniconda for Python 3.8
# Using 4.5.12 since latest version failed during installation
# https://github.com/conda/conda/issues/10143
wget https://repo.anaconda.com/miniconda/Miniconda3-4.5.12-Linux-x86_64.sh

if [ "$(sha256sum Miniconda3-4.5.12-Linux-x86_64.sh)" -ne "866ae9dff53ad0874e1d1a60b1ad1ef8" ]; then
  echo "Miniconda checksum failed, try again"
  exit 1
fi
bash Miniconda3-4.5.12-Linux-x86_64.sh -b -p /root/miniconda -f || exit 1
echo 'export PATH=$PATH:/root/miniconda/bin' >> /root/.bashrc
ln -s /root/miniconda/bin/conda /usr/bin/conda
ln -s /root/miniconda/bin/conda-env /usr/bin/conda-env

export PATH=$PATH:/root/miniconda/bin
conda create -y -n PLP python=3.8.3
conda install -y -n PLP -c sebp scikit-survival=0.12.0
conda install -y -n PLP -c pytorch pytorch torchvision
rm -f /Miniconda3-4.5.12-Linux-x86_64.sh
echo 'alias python=python3' >> /root/.bashrc
alias python=python3
conda update -y -n base conda