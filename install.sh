#!/bin/bash
INSTALL_DIR="/usr/share/doc"
LIB_DIR="WP_lib"
FULL_INSTALL_DIR="$INSTALL_DIR/$LIB_DIR"

mkdir -p "$FULL_INSTALL_DIR"

cd "$FULL_INSTALL_DIR"

git clone https://github.com/M4lware-01/WPCOLOR.git .

pip install -e .

echo "Installation terminée."
