$cache = "$env:appdata\Microsoft\Windows\PowerShell\PSReadline\*"

if (Test-Path $cache) {
    Remove-Item $cache -Force
    Write-Host "`nCommands history cleared`n" -ForegroundColor Red
}else {
    Write-Host "`nCommands history already emptied`n" -ForegroundColor Green
}

Set-Clipboard -Value ""
Write-Host "The clipboard has been deleted`n" -ForegroundColor Green
Clear-History

$tempFiles = "C:\temp\*"

if (Test-Path $tempFiles) {
    Remove-Item $tempFiles -Force
    Write-Host "The temp file has been emptied`n" -ForegroundColor Red

}else {
    Write-Host "The temp folder is already empty`n" -ForegroundColor Green
}
