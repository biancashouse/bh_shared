# create a file CIDER_LOG_TYPE.txt containing the picked cider log message type
# this output file will be read by the input-cider-log-message script

$ciderLogTypeIndex = {
Write-Host " ***************************"
Write-Host " *        cider log        *"
Write-Host " ***************************"
Write-Host
Write-Host " 1) added"
Write-Host " 2) changed"
Write-Host " 3) deprecated"
Write-Host " 4) removed"
Write-Host " 5) fixed"
Write-Host
Write-Host " 6) quit"
Write-Host
Write-Host " Select an option and press Enter: "  -nonewline
}

Invoke-Command $ciderLogTypeIndex 
$Select = Read-Host
Switch ($Select)
    {
    1 {
	"added" | Out-File -FilePath "CIDER-LOG-TYPE.txt"
	Write-Host " ***************************"
        Write-Host "      you chose: added"
	Write-Host " ***************************"
       }
    2 {
	"changed" | Out-File -FilePath "CIDER-LOG-TYPE.txt"
	Write-Host " ***************************"
        Write-Host "     you chose: changed"
	Write-Host " ***************************"
       }
    3 {
	"deprecated" | Out-File -FilePath "CIDER-LOG-TYPE.txt"
	Write-Host " ***************************"
        Write-Host "    you chose: deprecated"
	Write-Host " ***************************"
       }
    4 {
	"removed" | Out-File -FilePath "CIDER-LOG-TYPE.txt"
	Write-Host " ***************************"
        Write-Host "     you chose: removed"
	Write-Host " ***************************"
       }
    5 {
	"fixed" | Out-File -FilePath "CIDER-LOG-TYPE.txt"
	Write-Host " ***************************"
        Write-Host "      you chose: fixed"
	Write-Host " ***************************"
       }
    6 {
	Write-Host " ***************************"
        Write-Host "          aborted."
	Write-Host " ***************************"
       }
}