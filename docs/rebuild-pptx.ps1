# Rebuild the .pptx file from the extracted folder
# Usage: .\rebuild-pptx.ps1
# This re-zips the extracted OOXML structure back into a valid .pptx file

$source = Join-Path $PSScriptRoot "PSF_Use Case - O2C - BDC AR Intelligence"
$output = Join-Path $PSScriptRoot "PSF_Use Case - O2C - BDC AR Intelligence.pptx"

if (Test-Path $output) {
    Remove-Item $output -Force
}

Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::CreateFromDirectory($source, $output)

Write-Host "Rebuilt: $output"
