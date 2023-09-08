$INSTALL_DIR = [System.Environment]::GetFolderPath('ApplicationData')

$LIB_DIR = "WP_lib"

$FULL_INSTALL_DIR = Join-Path -Path $INSTALL_DIR -ChildPath $LIB_DIR

git clone https://github.com/M4lware-01/WPCOLOR.git $FULL_INSTALL_DIR

Set-Location -Path $FULL_INSTALL_DIR

pip install -e .

Write-Host "Installation terminée."
