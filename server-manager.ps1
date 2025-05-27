# TShock Terraria Server Manager Script for Windows

param(
    [Parameter(Position=0)]
    [string]$Action
)

$ServerProcess = "TShock.Server"
$ServerExe = "TShock.Server.exe"
$ConfigFile = "serverconfig.txt"

function Start-TerrariaServer {
    Write-Host "Starting Terraria server..." -ForegroundColor Green
    
    # Create worlds directory if it doesn't exist
    if (-not (Test-Path "worlds")) {
        New-Item -ItemType Directory -Path "worlds" | Out-Null
    }
    
    # Start the server process
    Start-Process -FilePath $ServerExe -ArgumentList "-config", $ConfigFile
    Write-Host "Server started!" -ForegroundColor Green
    Write-Host "Check the console window that just opened." -ForegroundColor Yellow
}

function Stop-TerrariaServer {
    Write-Host "Stopping Terraria server..." -ForegroundColor Yellow
    
    $process = Get-Process -Name $ServerProcess -ErrorAction SilentlyContinue
    if ($process) {
        $process | Stop-Process -Force
        Write-Host "Server stopped." -ForegroundColor Green
    } else {
        Write-Host "Server is not running." -ForegroundColor Red
    }
}

function Get-ServerStatus {
    $process = Get-Process -Name $ServerProcess -ErrorAction SilentlyContinue
    if ($process) {
        Write-Host "Server is running (PID: $($process.Id))" -ForegroundColor Green
    } else {
        Write-Host "Server is not running." -ForegroundColor Red
    }
}

function Restart-TerrariaServer {
    Stop-TerrariaServer
    Start-Sleep -Seconds 2
    Start-TerrariaServer
}

# Main script logic
switch ($Action) {
    "start" { Start-TerrariaServer }
    "stop" { Stop-TerrariaServer }
    "restart" { Restart-TerrariaServer }
    "status" { Get-ServerStatus }
    default {
        Write-Host "Terraria TShock Server Manager" -ForegroundColor Cyan
        Write-Host "==============================" -ForegroundColor Cyan
        Write-Host ""
        Write-Host "Usage: .\server-manager.ps1 [action]" -ForegroundColor White
        Write-Host ""
        Write-Host "Available actions:" -ForegroundColor Yellow
        Write-Host "  start    - Start the server"
        Write-Host "  stop     - Stop the server"
        Write-Host "  restart  - Restart the server"
        Write-Host "  status   - Check if server is running"
        Write-Host ""
        Write-Host "Example: .\server-manager.ps1 start" -ForegroundColor Gray
    }
}