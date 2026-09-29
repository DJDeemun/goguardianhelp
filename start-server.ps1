# Starts the game server from this folder (about:blank launcher)
$ErrorActionPreference = "Stop"
Set-Location -LiteralPath $PSScriptRoot

$port = 8765
Write-Host "Starting CRAZY-JEW 3D..."
Write-Host ""
Write-Host "  Use this exact URL in Chrome/Edge/Firefox:"
Write-Host "  http://127.0.0.1:$port/"
Write-Host ""
Write-Host "  (Do not use localhost — use 127.0.0.1)"
Write-Host "Press Ctrl+C to stop."
Write-Host ""

Start-Process "http://127.0.0.1:$port/"
python serve.py $port
