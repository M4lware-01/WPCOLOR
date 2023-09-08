#!/bin/bash
sudo apt install git -y
git clone https://github.com/M4lware-01/WPCOLOR.git

cd WPCOLOR

pip install -e .

echo "Installation terminée."
