$cache = "$env:appdata\Microsoft\Windows\PowerShell\PSReadline\*"

if (Test-Path $cache) {
    Remove-Item $cache -Force
    Write-Host "Commands history cleared" -ForegroundColor Red
}else {
    Write-Host "Commands history already emptied" -ForegroundColor Green
}

Set-Clipboard -Value ""
Write-Host "The clipboard has been deleted" -ForegroundColor Green
Clear-History

$tempFiles = "C:\temp\*"

if (Test-Path $tempFiles) {
    Remove-Item $tempFiles -Force
    Write-Host "The temp file has been emptied" -ForegroundColor Red

}else {
    Write-Host "The temp folder is already empty" -ForegroundColor Green
}
