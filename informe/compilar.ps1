$ErrorActionPreference = "Stop"

Push-Location $PSScriptRoot

New-Item -ItemType Directory -Force "build" | Out-Null

latexmk `
    -pdf `
    -interaction=nonstopmode `
    -file-line-error `
    -synctex=1 `
    -outdir=build `
    main.tex

Write-Host ""
Write-Host "PDF generado en: $PSScriptRoot\build\main.pdf"

Pop-Location
