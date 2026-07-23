$ErrorActionPreference = "Stop"

Push-Location $PSScriptRoot

latexmk -C -outdir=build main.tex

Write-Host "Archivos auxiliares eliminados."

Pop-Location
