param($minutes = 240)

$pshost = Get-Host
$pswindow = $pshost.UI.RawUI
$newsize = $pswindow.BufferSize
$newsize.Width = 150
$newsize.Height = 150
$pswindow.buffersize= $newsize
$newsize = $pswindow.WindowSize
$newsize.Width = 9
$newsize.Height = 2
$pswindow.WindowSize = $newsize

$myshell = New-Object -com "Wscript.Shell"

for ($i = 0; $i -lt $minutes; $i++){
    cls
    Write-Host "Anti-AFK"
    Start-Sleep -Seconds 60
    $myshell.sendkeys("{F17}")
}