$destination = Join-Path -Path $env:APPDATA -ChildPath 'WP_lib'

if (-not (Test-Path -Path $destination -PathType Container)) {
    New-Item -Path $destination -ItemType Directory
}
Invoke-WebRequest -Uri 'https://github.com/M4lware-01/WPCOLOR/archive/main.zip' -OutFile (Join-Path -Path $destination -ChildPath 'WPCOLOR-main.zip')

Set-Location -Path $destination

Expand-Archive -Path 'WPCOLOR-main.zip' -DestinationPath .

Rename-Item -Path 'WPCOLOR-main' -NewName 'WPCOLOR'

Remove-Item -Path 'WPCOLOR-main.zip' -Force

Write-Host "Téléchargement, extraction et décompression terminés."
