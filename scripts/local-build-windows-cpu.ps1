param(
  [string]$UpstreamTag = "v0.10.2",
  [string]$WorkDir = "$PWD\_litert_lm_build",
  [string]$OutputDir = "$PWD\dist"
)

$ErrorActionPreference = "Stop"

function Need-Command($Name) {
  if (-not (Get-Command $Name -ErrorAction SilentlyContinue)) {
    throw "Missing command: $Name"
  }
}

Need-Command git
Need-Command bazelisk
Need-Command python

git config --global core.longpaths true

if (Test-Path $WorkDir) {
  Remove-Item $WorkDir -Recurse -Force
}

New-Item -ItemType Directory -Force $WorkDir | Out-Null
New-Item -ItemType Directory -Force $OutputDir | Out-Null

Push-Location $WorkDir
try {
  git clone --depth 1 --branch $UpstreamTag https://github.com/google-ai-edge/LiteRT-LM.git upstream

  git -C upstream lfs install
  git -C upstream lfs pull

  $commit = git -C upstream rev-parse HEAD

  Push-Location upstream
  try {
    bazelisk --output_base=C:\bzl build //runtime/engine:litert_lm_main --config=windows
  } finally {
    Pop-Location
  }

  Copy-Item "upstream\bazel-bin\runtime\engine\litert_lm_main.exe" "$OutputDir\litert-lm-cpu-windows-x64.exe" -Force
  Copy-Item "upstream\LICENSE" "$OutputDir\LICENSE-LiteRT-LM.txt" -Force

  if (Test-Path "upstream\NOTICE") {
    Copy-Item "upstream\NOTICE" "$OutputDir\NOTICE-LiteRT-LM.txt" -Force
  }

  @"
LiteRT-LM Windows CPU Runtime

Upstream repo: https://github.com/google-ai-edge/LiteRT-LM
Upstream tag: $UpstreamTag
Upstream commit: $commit

Usage:
  .\litert-lm-cpu-windows-x64.exe --backend=cpu --model_path=C:\path\to\model.litertlm
"@ | Set-Content "$OutputDir\README.txt" -Encoding UTF8

  Write-Host ""
  Write-Host "Built:"
  Write-Host "  $OutputDir\litert-lm-cpu-windows-x64.exe"
  Write-Host ""
  Write-Host "Test with:"
  Write-Host "  .\dist\litert-lm-cpu-windows-x64.exe --backend=cpu --model_path=C:\path\to\model.litertlm"
} finally {
  Pop-Location
}
