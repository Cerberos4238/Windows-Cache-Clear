$cache = "$env:appdata\Microsoft\Windows\PowerShell\PSReadline\*"

if (Test-Path $cache) {
    Remove-Item $cache -Force
    Write-Host "L'historique des commandes a été effacé" -ForegroundColor Red
}else {
    Write-Host "L'historique des commandes est déjà vide" -ForegroundColor Green
}

Set-Clipboard -Value ""
Clear-History

$tempFiles = "C:\temp\*"

if (Test-Path $tempFiles) {
    Remove-Item $tempFiles -Force
    Write-Host "Le dossier temp a été vidé" -ForegroundColor Red

}else {
    Write-Host "Le dossier temp est déjà vide" -ForegroundColor Green
}
